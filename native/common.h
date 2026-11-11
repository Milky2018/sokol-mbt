#ifndef MOONBIT_SOKOL_COMMON_H
#define MOONBIT_SOKOL_COMMON_H
#include <moonbit.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include "sokol_log.h"
/* Arenas retain immutable descriptor snapshots, never MoonBit object addresses. */
typedef struct mb_chunk { void *ptr; void (*drop)(void*); struct mb_chunk *next; } mb_chunk;
typedef struct mb_arena { size_t refs; mb_chunk *chunks; } mb_arena;
typedef struct mb_box { void *value; mb_arena *arena; } mb_box;
static void mb_oom(void) { abort(); }
static void *mb_malloc(size_t n) { void *p = calloc(1, n ? n : 1); if (!p) mb_oom(); return p; }
static mb_arena *mb_arena_new(void) { mb_arena *a=mb_malloc(sizeof(*a)); a->refs=1; return a; }
static void mb_arena_drop(void *ptr) {
    mb_arena *a=ptr;
    if (--a->refs) return;
    mb_chunk *c=a->chunks;
    while(c) { mb_chunk *next=c->next; c->drop(c->ptr); free(c); c=next; }
    free(a);
}
static void mb_track(mb_arena *a, void *ptr, void (*drop)(void*)) {
    mb_chunk *c=mb_malloc(sizeof(*c)); c->ptr=ptr; c->drop=drop; c->next=a->chunks; a->chunks=c;
}
static void mb_keep(mb_arena *a, mb_arena *parent) {
    if (parent && a!=parent) { parent->refs++; mb_track(a,parent,mb_arena_drop); }
}
static void *mb_alloc(mb_arena *a, size_t n) { void *p=mb_malloc(n); mb_track(a,p,free); return p; }
static void *mb_copy(mb_arena *a,const void *src,size_t n) {
    if (!src || !n) return NULL;
    void *p=mb_alloc(a,n); memcpy(p,src,n); return p;
}
static const char *mb_string(mb_arena *a,const char *s) { return s ? mb_copy(a,s,strlen(s)+1) : NULL; }
static moonbit_bytes_t mb_bytes(const void *p,size_t n) {
    if (n>INT32_MAX || (n && !p)) abort();
    moonbit_bytes_t b=moonbit_make_bytes((int32_t)n,0); if(n) memcpy(b,p,n); return b;
}
static moonbit_bytes_t mb_utf8(const char *s) { return mb_bytes(s,s ? strlen(s) : 0); }
static void mb_box_drop(void *ptr) { mb_arena_drop(((mb_box*)ptr)->arena); }
static mb_box *mb_box_new(size_t size) {
    mb_box *b=moonbit_make_external_object(mb_box_drop,sizeof(*b));
    b->arena=mb_arena_new(); b->value=mb_alloc(b->arena,size); return b;
}
static mb_box *mb_box_copy(mb_box *src,size_t size) {
    mb_box *b=mb_box_new(size); memcpy(b->value,src->value,size); mb_keep(b->arena,src->arena); return b;
}
static void mb_closure_drop(void *p) { moonbit_decref(p); }
/* Setup/resource registries keep descriptor callback and native storage alive. */
typedef struct mb_entry { uint64_t key; mb_arena *arena; struct mb_entry *next; } mb_entry;
static mb_entry *mb_entries;
static mb_arena *mb_lookup(uint64_t key) { for(mb_entry *e=mb_entries;e;e=e->next) if(e->key==key) return e->arena; return NULL; }
static void mb_release(uint64_t key) {
    mb_entry **p=&mb_entries;
    while(*p) { mb_entry *e=*p; if(e->key==key) { *p=e->next; mb_arena_drop(e->arena); free(e); return; } p=&e->next; }
}
static void mb_store(uint64_t key,mb_arena *a) {
    mb_release(key); mb_entry *e=mb_malloc(sizeof(*e)); e->key=key; e->arena=a; a->refs++; e->next=mb_entries; mb_entries=e;
}
static void mb_release_all(void) { while(mb_entries) mb_release(mb_entries->key); }
#endif
