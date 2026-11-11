/* Fetch response snapshots may contain a data subrange of the IO buffer.
   Preserve that alias in the copy and free the underlying allocation once. */
static void mb_clone_sfetch_response_t(sfetch_response_t *destination,
                                       const sfetch_response_t *source) {
    *destination = *source;
    destination->path = mb_string(source->path);
    mb_clone_sfetch_range_t(&destination->buffer, &source->buffer);
    if (destination->buffer.ptr &&
        mb_contains(source->buffer.ptr, source->buffer.size, source->data.ptr, source->data.size)) {
        uintptr_t offset = (uintptr_t)source->data.ptr - (uintptr_t)source->buffer.ptr;
        destination->data.ptr = (const uint8_t *)destination->buffer.ptr + offset;
    } else {
        mb_clone_sfetch_range_t(&destination->data, &source->data);
    }
}

static void mb_drop_sfetch_response_t(void *object) {
    sfetch_response_t *response = object;
    if (!mb_contains(response->buffer.ptr, response->buffer.size, response->data.ptr,
                     response->data.size)) {
        free((void *)response->data.ptr);
    }
    free((void *)response->buffer.ptr);
    free((void *)response->path);
}
