typedef void (*mb_sg_commit_listener_func_call)(void *);

enum { MB_SG_COMMIT_LISTENER_FUNC };

typedef struct {
    struct {
        void *closure;
        mb_sg_commit_listener_func_call call;
    } func;
} mb_sg_commit_listener_callbacks;

static void mb_sg_commit_listener_func_trampoline(void *userdata) {
    mb_sg_commit_listener_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->func.closure;
    mb_sg_commit_listener_func_call call = context->func.call;
    moonbit_incref(closure);
    call(closure);
    moonbit_decref(closure);
}

static int mb_managed_sg_commit_listener(const sg_commit_listener *value) {
    return value->func == mb_sg_commit_listener_func_trampoline;
}

static void mb_validate_sg_commit_listener(const sg_commit_listener *value) {
    if (value->func && value->func != mb_sg_commit_listener_func_trampoline) {
        abort();
    }
}

static mb_sg_commit_listener_callbacks *
mb_copy_sg_commit_listener_context(const sg_commit_listener *value, int excluded) {
    mb_sg_commit_listener_callbacks *copy = mb_malloc(sizeof(*copy));
    if (mb_managed_sg_commit_listener(value)) {
        *copy = *(mb_sg_commit_listener_callbacks *)value->user_data;
    }
    if (excluded != MB_SG_COMMIT_LISTENER_FUNC && copy->func.closure) {
        moonbit_incref(copy->func.closure);
    }
    return copy;
}

static void mb_clone_sg_commit_listener_callbacks(sg_commit_listener *destination,
                                                  const sg_commit_listener *source) {
    if (!mb_managed_sg_commit_listener(source)) {
        return;
    }
    destination->user_data = mb_copy_sg_commit_listener_context(source, -1);
}

static void mb_drop_sg_commit_listener_callbacks(sg_commit_listener *value) {
    if (!mb_managed_sg_commit_listener(value)) {
        return;
    }
    mb_sg_commit_listener_callbacks *context = value->user_data;
    if (context->func.closure) {
        moonbit_decref(context->func.closure);
    }
    free(context);
}

MOONBIT_FFI_EXPORT sg_commit_listener *
mb_sg_commit_listener_on_func(sg_commit_listener *self, mb_sg_commit_listener_func_call call,
                              void *closure) {
    mb_validate_sg_commit_listener(self);
    sg_commit_listener *result = mb_new_sg_commit_listener();
    *result = *self;
    mb_sg_commit_listener_callbacks *context =
        mb_copy_sg_commit_listener_context(self, MB_SG_COMMIT_LISTENER_FUNC);
    context->func.closure = closure;
    context->func.call = call;
    result->user_data = context;
    result->func = mb_sg_commit_listener_func_trampoline;
    return result;
}
