typedef void (*mb_sg_trace_hooks_reset_state_cache_call)(void *);

typedef void (*mb_sg_trace_hooks_make_buffer_call)(void *, sg_buffer_desc *, uint32_t);

typedef void (*mb_sg_trace_hooks_make_image_call)(void *, sg_image_desc *, uint32_t);

typedef void (*mb_sg_trace_hooks_make_sampler_call)(void *, sg_sampler_desc *, uint32_t);

typedef void (*mb_sg_trace_hooks_make_shader_call)(void *, sg_shader_desc *, uint32_t);

typedef void (*mb_sg_trace_hooks_make_pipeline_call)(void *, sg_pipeline_desc *, uint32_t);

typedef void (*mb_sg_trace_hooks_make_view_call)(void *, sg_view_desc *, uint32_t);

typedef void (*mb_sg_trace_hooks_destroy_buffer_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_destroy_image_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_destroy_sampler_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_destroy_shader_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_destroy_pipeline_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_destroy_view_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_write_buffer_transient_call)(void *, sg_write_buffer_desc *);

typedef void (*mb_sg_trace_hooks_write_image_transient_call)(void *, sg_write_image_desc *);

typedef void (*mb_sg_trace_hooks_write_buffer_unsealed_call)(void *, sg_write_buffer_desc *);

typedef void (*mb_sg_trace_hooks_write_image_unsealed_call)(void *, sg_write_image_desc *);

typedef void (*mb_sg_trace_hooks_seal_buffer_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_seal_image_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_copy_buffer_to_buffer_call)(void *,
                                                             sg_copy_buffer_to_buffer_desc *);

typedef void (*mb_sg_trace_hooks_copy_buffer_to_image_call)(void *, sg_copy_buffer_to_image_desc *);

typedef void (*mb_sg_trace_hooks_copy_image_to_image_call)(void *, sg_copy_image_to_image_desc *);

typedef void (*mb_sg_trace_hooks_begin_pass_call)(void *, sg_pass *);

typedef void (*mb_sg_trace_hooks_apply_viewport_call)(void *, int32_t, int32_t, int32_t, int32_t,
                                                      int32_t);

typedef void (*mb_sg_trace_hooks_apply_scissor_rect_call)(void *, int32_t, int32_t, int32_t,
                                                          int32_t, int32_t);

typedef void (*mb_sg_trace_hooks_apply_pipeline_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_apply_bindings_call)(void *, sg_bindings *);

typedef void (*mb_sg_trace_hooks_apply_uniforms_call)(void *, int32_t, sg_range *);

typedef void (*mb_sg_trace_hooks_draw_call)(void *, int32_t, int32_t, int32_t);

typedef void (*mb_sg_trace_hooks_draw_ex_call)(void *, int32_t, int32_t, int32_t, int32_t, int32_t);

typedef void (*mb_sg_trace_hooks_dispatch_call)(void *, int32_t, int32_t, int32_t);

typedef void (*mb_sg_trace_hooks_end_pass_call)(void *);

typedef void (*mb_sg_trace_hooks_commit_call)(void *);

typedef void (*mb_sg_trace_hooks_alloc_buffer_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_alloc_image_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_alloc_sampler_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_alloc_shader_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_alloc_pipeline_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_alloc_view_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_dealloc_buffer_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_dealloc_image_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_dealloc_sampler_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_dealloc_shader_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_dealloc_pipeline_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_dealloc_view_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_init_buffer_call)(void *, uint32_t, sg_buffer_desc *);

typedef void (*mb_sg_trace_hooks_init_image_call)(void *, uint32_t, sg_image_desc *);

typedef void (*mb_sg_trace_hooks_init_sampler_call)(void *, uint32_t, sg_sampler_desc *);

typedef void (*mb_sg_trace_hooks_init_shader_call)(void *, uint32_t, sg_shader_desc *);

typedef void (*mb_sg_trace_hooks_init_pipeline_call)(void *, uint32_t, sg_pipeline_desc *);

typedef void (*mb_sg_trace_hooks_init_view_call)(void *, uint32_t, sg_view_desc *);

typedef void (*mb_sg_trace_hooks_uninit_buffer_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_uninit_image_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_uninit_sampler_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_uninit_shader_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_uninit_pipeline_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_uninit_view_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_fail_buffer_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_fail_image_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_fail_sampler_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_fail_shader_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_fail_pipeline_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_fail_view_call)(void *, uint32_t);

typedef void (*mb_sg_trace_hooks_push_debug_group_call)(void *, moonbit_bytes_t);

typedef void (*mb_sg_trace_hooks_pop_debug_group_call)(void *);

enum {
    MB_SG_TRACE_HOOKS_RESET_STATE_CACHE,
    MB_SG_TRACE_HOOKS_MAKE_BUFFER,
    MB_SG_TRACE_HOOKS_MAKE_IMAGE,
    MB_SG_TRACE_HOOKS_MAKE_SAMPLER,
    MB_SG_TRACE_HOOKS_MAKE_SHADER,
    MB_SG_TRACE_HOOKS_MAKE_PIPELINE,
    MB_SG_TRACE_HOOKS_MAKE_VIEW,
    MB_SG_TRACE_HOOKS_DESTROY_BUFFER,
    MB_SG_TRACE_HOOKS_DESTROY_IMAGE,
    MB_SG_TRACE_HOOKS_DESTROY_SAMPLER,
    MB_SG_TRACE_HOOKS_DESTROY_SHADER,
    MB_SG_TRACE_HOOKS_DESTROY_PIPELINE,
    MB_SG_TRACE_HOOKS_DESTROY_VIEW,
    MB_SG_TRACE_HOOKS_WRITE_BUFFER_TRANSIENT,
    MB_SG_TRACE_HOOKS_WRITE_IMAGE_TRANSIENT,
    MB_SG_TRACE_HOOKS_WRITE_BUFFER_UNSEALED,
    MB_SG_TRACE_HOOKS_WRITE_IMAGE_UNSEALED,
    MB_SG_TRACE_HOOKS_SEAL_BUFFER,
    MB_SG_TRACE_HOOKS_SEAL_IMAGE,
    MB_SG_TRACE_HOOKS_COPY_BUFFER_TO_BUFFER,
    MB_SG_TRACE_HOOKS_COPY_BUFFER_TO_IMAGE,
    MB_SG_TRACE_HOOKS_COPY_IMAGE_TO_IMAGE,
    MB_SG_TRACE_HOOKS_BEGIN_PASS,
    MB_SG_TRACE_HOOKS_APPLY_VIEWPORT,
    MB_SG_TRACE_HOOKS_APPLY_SCISSOR_RECT,
    MB_SG_TRACE_HOOKS_APPLY_PIPELINE,
    MB_SG_TRACE_HOOKS_APPLY_BINDINGS,
    MB_SG_TRACE_HOOKS_APPLY_UNIFORMS,
    MB_SG_TRACE_HOOKS_DRAW,
    MB_SG_TRACE_HOOKS_DRAW_EX,
    MB_SG_TRACE_HOOKS_DISPATCH,
    MB_SG_TRACE_HOOKS_END_PASS,
    MB_SG_TRACE_HOOKS_COMMIT,
    MB_SG_TRACE_HOOKS_ALLOC_BUFFER,
    MB_SG_TRACE_HOOKS_ALLOC_IMAGE,
    MB_SG_TRACE_HOOKS_ALLOC_SAMPLER,
    MB_SG_TRACE_HOOKS_ALLOC_SHADER,
    MB_SG_TRACE_HOOKS_ALLOC_PIPELINE,
    MB_SG_TRACE_HOOKS_ALLOC_VIEW,
    MB_SG_TRACE_HOOKS_DEALLOC_BUFFER,
    MB_SG_TRACE_HOOKS_DEALLOC_IMAGE,
    MB_SG_TRACE_HOOKS_DEALLOC_SAMPLER,
    MB_SG_TRACE_HOOKS_DEALLOC_SHADER,
    MB_SG_TRACE_HOOKS_DEALLOC_PIPELINE,
    MB_SG_TRACE_HOOKS_DEALLOC_VIEW,
    MB_SG_TRACE_HOOKS_INIT_BUFFER,
    MB_SG_TRACE_HOOKS_INIT_IMAGE,
    MB_SG_TRACE_HOOKS_INIT_SAMPLER,
    MB_SG_TRACE_HOOKS_INIT_SHADER,
    MB_SG_TRACE_HOOKS_INIT_PIPELINE,
    MB_SG_TRACE_HOOKS_INIT_VIEW,
    MB_SG_TRACE_HOOKS_UNINIT_BUFFER,
    MB_SG_TRACE_HOOKS_UNINIT_IMAGE,
    MB_SG_TRACE_HOOKS_UNINIT_SAMPLER,
    MB_SG_TRACE_HOOKS_UNINIT_SHADER,
    MB_SG_TRACE_HOOKS_UNINIT_PIPELINE,
    MB_SG_TRACE_HOOKS_UNINIT_VIEW,
    MB_SG_TRACE_HOOKS_FAIL_BUFFER,
    MB_SG_TRACE_HOOKS_FAIL_IMAGE,
    MB_SG_TRACE_HOOKS_FAIL_SAMPLER,
    MB_SG_TRACE_HOOKS_FAIL_SHADER,
    MB_SG_TRACE_HOOKS_FAIL_PIPELINE,
    MB_SG_TRACE_HOOKS_FAIL_VIEW,
    MB_SG_TRACE_HOOKS_PUSH_DEBUG_GROUP,
    MB_SG_TRACE_HOOKS_POP_DEBUG_GROUP
};

typedef struct {
    struct {
        void *closure;
        mb_sg_trace_hooks_reset_state_cache_call call;
    } reset_state_cache;
    struct {
        void *closure;
        mb_sg_trace_hooks_make_buffer_call call;
    } make_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_make_image_call call;
    } make_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_make_sampler_call call;
    } make_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_make_shader_call call;
    } make_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_make_pipeline_call call;
    } make_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_make_view_call call;
    } make_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_destroy_buffer_call call;
    } destroy_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_destroy_image_call call;
    } destroy_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_destroy_sampler_call call;
    } destroy_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_destroy_shader_call call;
    } destroy_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_destroy_pipeline_call call;
    } destroy_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_destroy_view_call call;
    } destroy_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_write_buffer_transient_call call;
    } write_buffer_transient;
    struct {
        void *closure;
        mb_sg_trace_hooks_write_image_transient_call call;
    } write_image_transient;
    struct {
        void *closure;
        mb_sg_trace_hooks_write_buffer_unsealed_call call;
    } write_buffer_unsealed;
    struct {
        void *closure;
        mb_sg_trace_hooks_write_image_unsealed_call call;
    } write_image_unsealed;
    struct {
        void *closure;
        mb_sg_trace_hooks_seal_buffer_call call;
    } seal_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_seal_image_call call;
    } seal_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_copy_buffer_to_buffer_call call;
    } copy_buffer_to_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_copy_buffer_to_image_call call;
    } copy_buffer_to_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_copy_image_to_image_call call;
    } copy_image_to_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_begin_pass_call call;
    } begin_pass;
    struct {
        void *closure;
        mb_sg_trace_hooks_apply_viewport_call call;
    } apply_viewport;
    struct {
        void *closure;
        mb_sg_trace_hooks_apply_scissor_rect_call call;
    } apply_scissor_rect;
    struct {
        void *closure;
        mb_sg_trace_hooks_apply_pipeline_call call;
    } apply_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_apply_bindings_call call;
    } apply_bindings;
    struct {
        void *closure;
        mb_sg_trace_hooks_apply_uniforms_call call;
    } apply_uniforms;
    struct {
        void *closure;
        mb_sg_trace_hooks_draw_call call;
    } draw;
    struct {
        void *closure;
        mb_sg_trace_hooks_draw_ex_call call;
    } draw_ex;
    struct {
        void *closure;
        mb_sg_trace_hooks_dispatch_call call;
    } dispatch;
    struct {
        void *closure;
        mb_sg_trace_hooks_end_pass_call call;
    } end_pass;
    struct {
        void *closure;
        mb_sg_trace_hooks_commit_call call;
    } commit;
    struct {
        void *closure;
        mb_sg_trace_hooks_alloc_buffer_call call;
    } alloc_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_alloc_image_call call;
    } alloc_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_alloc_sampler_call call;
    } alloc_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_alloc_shader_call call;
    } alloc_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_alloc_pipeline_call call;
    } alloc_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_alloc_view_call call;
    } alloc_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_dealloc_buffer_call call;
    } dealloc_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_dealloc_image_call call;
    } dealloc_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_dealloc_sampler_call call;
    } dealloc_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_dealloc_shader_call call;
    } dealloc_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_dealloc_pipeline_call call;
    } dealloc_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_dealloc_view_call call;
    } dealloc_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_init_buffer_call call;
    } init_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_init_image_call call;
    } init_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_init_sampler_call call;
    } init_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_init_shader_call call;
    } init_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_init_pipeline_call call;
    } init_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_init_view_call call;
    } init_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_uninit_buffer_call call;
    } uninit_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_uninit_image_call call;
    } uninit_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_uninit_sampler_call call;
    } uninit_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_uninit_shader_call call;
    } uninit_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_uninit_pipeline_call call;
    } uninit_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_uninit_view_call call;
    } uninit_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_fail_buffer_call call;
    } fail_buffer;
    struct {
        void *closure;
        mb_sg_trace_hooks_fail_image_call call;
    } fail_image;
    struct {
        void *closure;
        mb_sg_trace_hooks_fail_sampler_call call;
    } fail_sampler;
    struct {
        void *closure;
        mb_sg_trace_hooks_fail_shader_call call;
    } fail_shader;
    struct {
        void *closure;
        mb_sg_trace_hooks_fail_pipeline_call call;
    } fail_pipeline;
    struct {
        void *closure;
        mb_sg_trace_hooks_fail_view_call call;
    } fail_view;
    struct {
        void *closure;
        mb_sg_trace_hooks_push_debug_group_call call;
    } push_debug_group;
    struct {
        void *closure;
        mb_sg_trace_hooks_pop_debug_group_call call;
    } pop_debug_group;
} mb_sg_trace_hooks_callbacks;

static void mb_sg_trace_hooks_reset_state_cache_trampoline(void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->reset_state_cache.closure;
    mb_sg_trace_hooks_reset_state_cache_call call = context->reset_state_cache.call;
    moonbit_incref(closure);
    call(closure);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_make_buffer_trampoline(const sg_buffer_desc *a0, sg_buffer a1,
                                                     void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_buffer_desc *arg0 = mb_copy_sg_buffer_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->make_buffer.closure;
    mb_sg_trace_hooks_make_buffer_call call = context->make_buffer.call;
    moonbit_incref(closure);
    call(closure, arg0, a1.id);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_make_image_trampoline(const sg_image_desc *a0, sg_image a1,
                                                    void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_image_desc *arg0 = mb_copy_sg_image_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->make_image.closure;
    mb_sg_trace_hooks_make_image_call call = context->make_image.call;
    moonbit_incref(closure);
    call(closure, arg0, a1.id);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_make_sampler_trampoline(const sg_sampler_desc *a0, sg_sampler a1,
                                                      void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_sampler_desc *arg0 = mb_copy_sg_sampler_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->make_sampler.closure;
    mb_sg_trace_hooks_make_sampler_call call = context->make_sampler.call;
    moonbit_incref(closure);
    call(closure, arg0, a1.id);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_make_shader_trampoline(const sg_shader_desc *a0, sg_shader a1,
                                                     void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_shader_desc *arg0 = mb_copy_sg_shader_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->make_shader.closure;
    mb_sg_trace_hooks_make_shader_call call = context->make_shader.call;
    moonbit_incref(closure);
    call(closure, arg0, a1.id);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_make_pipeline_trampoline(const sg_pipeline_desc *a0, sg_pipeline a1,
                                                       void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_pipeline_desc *arg0 = mb_copy_sg_pipeline_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->make_pipeline.closure;
    mb_sg_trace_hooks_make_pipeline_call call = context->make_pipeline.call;
    moonbit_incref(closure);
    call(closure, arg0, a1.id);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_make_view_trampoline(const sg_view_desc *a0, sg_view a1,
                                                   void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_view_desc *arg0 = mb_copy_sg_view_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->make_view.closure;
    mb_sg_trace_hooks_make_view_call call = context->make_view.call;
    moonbit_incref(closure);
    call(closure, arg0, a1.id);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_destroy_buffer_trampoline(sg_buffer a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->destroy_buffer.closure;
    mb_sg_trace_hooks_destroy_buffer_call call = context->destroy_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_destroy_image_trampoline(sg_image a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->destroy_image.closure;
    mb_sg_trace_hooks_destroy_image_call call = context->destroy_image.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_destroy_sampler_trampoline(sg_sampler a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->destroy_sampler.closure;
    mb_sg_trace_hooks_destroy_sampler_call call = context->destroy_sampler.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_destroy_shader_trampoline(sg_shader a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->destroy_shader.closure;
    mb_sg_trace_hooks_destroy_shader_call call = context->destroy_shader.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_destroy_pipeline_trampoline(sg_pipeline a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->destroy_pipeline.closure;
    mb_sg_trace_hooks_destroy_pipeline_call call = context->destroy_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_destroy_view_trampoline(sg_view a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->destroy_view.closure;
    mb_sg_trace_hooks_destroy_view_call call = context->destroy_view.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_write_buffer_transient_trampoline(const sg_write_buffer_desc *a0,
                                                                void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_write_buffer_desc *arg0 = mb_copy_sg_write_buffer_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->write_buffer_transient.closure;
    mb_sg_trace_hooks_write_buffer_transient_call call = context->write_buffer_transient.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_write_image_transient_trampoline(const sg_write_image_desc *a0,
                                                               void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_write_image_desc *arg0 = mb_copy_sg_write_image_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->write_image_transient.closure;
    mb_sg_trace_hooks_write_image_transient_call call = context->write_image_transient.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_write_buffer_unsealed_trampoline(const sg_write_buffer_desc *a0,
                                                               void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_write_buffer_desc *arg0 = mb_copy_sg_write_buffer_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->write_buffer_unsealed.closure;
    mb_sg_trace_hooks_write_buffer_unsealed_call call = context->write_buffer_unsealed.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_write_image_unsealed_trampoline(const sg_write_image_desc *a0,
                                                              void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_write_image_desc *arg0 = mb_copy_sg_write_image_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->write_image_unsealed.closure;
    mb_sg_trace_hooks_write_image_unsealed_call call = context->write_image_unsealed.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_seal_buffer_trampoline(sg_buffer a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->seal_buffer.closure;
    mb_sg_trace_hooks_seal_buffer_call call = context->seal_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_seal_image_trampoline(sg_image a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->seal_image.closure;
    mb_sg_trace_hooks_seal_image_call call = context->seal_image.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void
mb_sg_trace_hooks_copy_buffer_to_buffer_trampoline(const sg_copy_buffer_to_buffer_desc *a0,
                                                   void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_copy_buffer_to_buffer_desc *arg0 = mb_copy_sg_copy_buffer_to_buffer_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->copy_buffer_to_buffer.closure;
    mb_sg_trace_hooks_copy_buffer_to_buffer_call call = context->copy_buffer_to_buffer.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void
mb_sg_trace_hooks_copy_buffer_to_image_trampoline(const sg_copy_buffer_to_image_desc *a0,
                                                  void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_copy_buffer_to_image_desc *arg0 = mb_copy_sg_copy_buffer_to_image_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->copy_buffer_to_image.closure;
    mb_sg_trace_hooks_copy_buffer_to_image_call call = context->copy_buffer_to_image.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_copy_image_to_image_trampoline(const sg_copy_image_to_image_desc *a0,
                                                             void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_copy_image_to_image_desc *arg0 = mb_copy_sg_copy_image_to_image_desc(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->copy_image_to_image.closure;
    mb_sg_trace_hooks_copy_image_to_image_call call = context->copy_image_to_image.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_begin_pass_trampoline(const sg_pass *a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_pass *arg0 = mb_copy_sg_pass(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->begin_pass.closure;
    mb_sg_trace_hooks_begin_pass_call call = context->begin_pass.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_apply_viewport_trampoline(int a0, int a1, int a2, int a3, bool a4,
                                                        void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->apply_viewport.closure;
    mb_sg_trace_hooks_apply_viewport_call call = context->apply_viewport.call;
    moonbit_incref(closure);
    call(closure, a0, a1, a2, a3, a4);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_apply_scissor_rect_trampoline(int a0, int a1, int a2, int a3, bool a4,
                                                            void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->apply_scissor_rect.closure;
    mb_sg_trace_hooks_apply_scissor_rect_call call = context->apply_scissor_rect.call;
    moonbit_incref(closure);
    call(closure, a0, a1, a2, a3, a4);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_apply_pipeline_trampoline(sg_pipeline a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->apply_pipeline.closure;
    mb_sg_trace_hooks_apply_pipeline_call call = context->apply_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_apply_bindings_trampoline(const sg_bindings *a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_bindings *arg0 = mb_copy_sg_bindings(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->apply_bindings.closure;
    mb_sg_trace_hooks_apply_bindings_call call = context->apply_bindings.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_apply_uniforms_trampoline(int a0, const sg_range *a1,
                                                        void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_range *arg1 = mb_copy_sg_range(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->apply_uniforms.closure;
    mb_sg_trace_hooks_apply_uniforms_call call = context->apply_uniforms.call;
    moonbit_incref(closure);
    call(closure, a0, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_draw_trampoline(int a0, int a1, int a2, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->draw.closure;
    mb_sg_trace_hooks_draw_call call = context->draw.call;
    moonbit_incref(closure);
    call(closure, a0, a1, a2);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_draw_ex_trampoline(int a0, int a1, int a2, int a3, int a4,
                                                 void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->draw_ex.closure;
    mb_sg_trace_hooks_draw_ex_call call = context->draw_ex.call;
    moonbit_incref(closure);
    call(closure, a0, a1, a2, a3, a4);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dispatch_trampoline(int a0, int a1, int a2, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dispatch.closure;
    mb_sg_trace_hooks_dispatch_call call = context->dispatch.call;
    moonbit_incref(closure);
    call(closure, a0, a1, a2);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_end_pass_trampoline(void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->end_pass.closure;
    mb_sg_trace_hooks_end_pass_call call = context->end_pass.call;
    moonbit_incref(closure);
    call(closure);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_commit_trampoline(void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->commit.closure;
    mb_sg_trace_hooks_commit_call call = context->commit.call;
    moonbit_incref(closure);
    call(closure);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_alloc_buffer_trampoline(sg_buffer a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->alloc_buffer.closure;
    mb_sg_trace_hooks_alloc_buffer_call call = context->alloc_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_alloc_image_trampoline(sg_image a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->alloc_image.closure;
    mb_sg_trace_hooks_alloc_image_call call = context->alloc_image.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_alloc_sampler_trampoline(sg_sampler a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->alloc_sampler.closure;
    mb_sg_trace_hooks_alloc_sampler_call call = context->alloc_sampler.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_alloc_shader_trampoline(sg_shader a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->alloc_shader.closure;
    mb_sg_trace_hooks_alloc_shader_call call = context->alloc_shader.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_alloc_pipeline_trampoline(sg_pipeline a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->alloc_pipeline.closure;
    mb_sg_trace_hooks_alloc_pipeline_call call = context->alloc_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_alloc_view_trampoline(sg_view a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->alloc_view.closure;
    mb_sg_trace_hooks_alloc_view_call call = context->alloc_view.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dealloc_buffer_trampoline(sg_buffer a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dealloc_buffer.closure;
    mb_sg_trace_hooks_dealloc_buffer_call call = context->dealloc_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dealloc_image_trampoline(sg_image a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dealloc_image.closure;
    mb_sg_trace_hooks_dealloc_image_call call = context->dealloc_image.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dealloc_sampler_trampoline(sg_sampler a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dealloc_sampler.closure;
    mb_sg_trace_hooks_dealloc_sampler_call call = context->dealloc_sampler.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dealloc_shader_trampoline(sg_shader a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dealloc_shader.closure;
    mb_sg_trace_hooks_dealloc_shader_call call = context->dealloc_shader.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dealloc_pipeline_trampoline(sg_pipeline a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dealloc_pipeline.closure;
    mb_sg_trace_hooks_dealloc_pipeline_call call = context->dealloc_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_dealloc_view_trampoline(sg_view a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->dealloc_view.closure;
    mb_sg_trace_hooks_dealloc_view_call call = context->dealloc_view.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_init_buffer_trampoline(sg_buffer a0, const sg_buffer_desc *a1,
                                                     void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_buffer_desc *arg1 = mb_copy_sg_buffer_desc(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->init_buffer.closure;
    mb_sg_trace_hooks_init_buffer_call call = context->init_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_init_image_trampoline(sg_image a0, const sg_image_desc *a1,
                                                    void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_image_desc *arg1 = mb_copy_sg_image_desc(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->init_image.closure;
    mb_sg_trace_hooks_init_image_call call = context->init_image.call;
    moonbit_incref(closure);
    call(closure, a0.id, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_init_sampler_trampoline(sg_sampler a0, const sg_sampler_desc *a1,
                                                      void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_sampler_desc *arg1 = mb_copy_sg_sampler_desc(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->init_sampler.closure;
    mb_sg_trace_hooks_init_sampler_call call = context->init_sampler.call;
    moonbit_incref(closure);
    call(closure, a0.id, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_init_shader_trampoline(sg_shader a0, const sg_shader_desc *a1,
                                                     void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_shader_desc *arg1 = mb_copy_sg_shader_desc(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->init_shader.closure;
    mb_sg_trace_hooks_init_shader_call call = context->init_shader.call;
    moonbit_incref(closure);
    call(closure, a0.id, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_init_pipeline_trampoline(sg_pipeline a0, const sg_pipeline_desc *a1,
                                                       void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_pipeline_desc *arg1 = mb_copy_sg_pipeline_desc(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->init_pipeline.closure;
    mb_sg_trace_hooks_init_pipeline_call call = context->init_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_init_view_trampoline(sg_view a0, const sg_view_desc *a1,
                                                   void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    sg_view_desc *arg1 = mb_copy_sg_view_desc(a1);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->init_view.closure;
    mb_sg_trace_hooks_init_view_call call = context->init_view.call;
    moonbit_incref(closure);
    call(closure, a0.id, arg1);
    moonbit_decref(arg1);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_uninit_buffer_trampoline(sg_buffer a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->uninit_buffer.closure;
    mb_sg_trace_hooks_uninit_buffer_call call = context->uninit_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_uninit_image_trampoline(sg_image a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->uninit_image.closure;
    mb_sg_trace_hooks_uninit_image_call call = context->uninit_image.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_uninit_sampler_trampoline(sg_sampler a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->uninit_sampler.closure;
    mb_sg_trace_hooks_uninit_sampler_call call = context->uninit_sampler.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_uninit_shader_trampoline(sg_shader a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->uninit_shader.closure;
    mb_sg_trace_hooks_uninit_shader_call call = context->uninit_shader.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_uninit_pipeline_trampoline(sg_pipeline a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->uninit_pipeline.closure;
    mb_sg_trace_hooks_uninit_pipeline_call call = context->uninit_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_uninit_view_trampoline(sg_view a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->uninit_view.closure;
    mb_sg_trace_hooks_uninit_view_call call = context->uninit_view.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_fail_buffer_trampoline(sg_buffer a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->fail_buffer.closure;
    mb_sg_trace_hooks_fail_buffer_call call = context->fail_buffer.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_fail_image_trampoline(sg_image a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->fail_image.closure;
    mb_sg_trace_hooks_fail_image_call call = context->fail_image.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_fail_sampler_trampoline(sg_sampler a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->fail_sampler.closure;
    mb_sg_trace_hooks_fail_sampler_call call = context->fail_sampler.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_fail_shader_trampoline(sg_shader a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->fail_shader.closure;
    mb_sg_trace_hooks_fail_shader_call call = context->fail_shader.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_fail_pipeline_trampoline(sg_pipeline a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->fail_pipeline.closure;
    mb_sg_trace_hooks_fail_pipeline_call call = context->fail_pipeline.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_fail_view_trampoline(sg_view a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->fail_view.closure;
    mb_sg_trace_hooks_fail_view_call call = context->fail_view.call;
    moonbit_incref(closure);
    call(closure, a0.id);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_push_debug_group_trampoline(const char *a0, void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    moonbit_bytes_t arg0 = mb_utf8(a0);
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->push_debug_group.closure;
    mb_sg_trace_hooks_push_debug_group_call call = context->push_debug_group.call;
    moonbit_incref(closure);
    call(closure, arg0);
    moonbit_decref(arg0);
    moonbit_decref(closure);
}

static void mb_sg_trace_hooks_pop_debug_group_trampoline(void *userdata) {
    mb_sg_trace_hooks_callbacks *context = userdata;
    /* The callback may unregister itself and free context. Save both first. */
    void *closure = context->pop_debug_group.closure;
    mb_sg_trace_hooks_pop_debug_group_call call = context->pop_debug_group.call;
    moonbit_incref(closure);
    call(closure);
    moonbit_decref(closure);
}

static int mb_managed_sg_trace_hooks(const sg_trace_hooks *value) {
    return value->reset_state_cache == mb_sg_trace_hooks_reset_state_cache_trampoline ||
           value->make_buffer == mb_sg_trace_hooks_make_buffer_trampoline ||
           value->make_image == mb_sg_trace_hooks_make_image_trampoline ||
           value->make_sampler == mb_sg_trace_hooks_make_sampler_trampoline ||
           value->make_shader == mb_sg_trace_hooks_make_shader_trampoline ||
           value->make_pipeline == mb_sg_trace_hooks_make_pipeline_trampoline ||
           value->make_view == mb_sg_trace_hooks_make_view_trampoline ||
           value->destroy_buffer == mb_sg_trace_hooks_destroy_buffer_trampoline ||
           value->destroy_image == mb_sg_trace_hooks_destroy_image_trampoline ||
           value->destroy_sampler == mb_sg_trace_hooks_destroy_sampler_trampoline ||
           value->destroy_shader == mb_sg_trace_hooks_destroy_shader_trampoline ||
           value->destroy_pipeline == mb_sg_trace_hooks_destroy_pipeline_trampoline ||
           value->destroy_view == mb_sg_trace_hooks_destroy_view_trampoline ||
           value->write_buffer_transient == mb_sg_trace_hooks_write_buffer_transient_trampoline ||
           value->write_image_transient == mb_sg_trace_hooks_write_image_transient_trampoline ||
           value->write_buffer_unsealed == mb_sg_trace_hooks_write_buffer_unsealed_trampoline ||
           value->write_image_unsealed == mb_sg_trace_hooks_write_image_unsealed_trampoline ||
           value->seal_buffer == mb_sg_trace_hooks_seal_buffer_trampoline ||
           value->seal_image == mb_sg_trace_hooks_seal_image_trampoline ||
           value->copy_buffer_to_buffer == mb_sg_trace_hooks_copy_buffer_to_buffer_trampoline ||
           value->copy_buffer_to_image == mb_sg_trace_hooks_copy_buffer_to_image_trampoline ||
           value->copy_image_to_image == mb_sg_trace_hooks_copy_image_to_image_trampoline ||
           value->begin_pass == mb_sg_trace_hooks_begin_pass_trampoline ||
           value->apply_viewport == mb_sg_trace_hooks_apply_viewport_trampoline ||
           value->apply_scissor_rect == mb_sg_trace_hooks_apply_scissor_rect_trampoline ||
           value->apply_pipeline == mb_sg_trace_hooks_apply_pipeline_trampoline ||
           value->apply_bindings == mb_sg_trace_hooks_apply_bindings_trampoline ||
           value->apply_uniforms == mb_sg_trace_hooks_apply_uniforms_trampoline ||
           value->draw == mb_sg_trace_hooks_draw_trampoline ||
           value->draw_ex == mb_sg_trace_hooks_draw_ex_trampoline ||
           value->dispatch == mb_sg_trace_hooks_dispatch_trampoline ||
           value->end_pass == mb_sg_trace_hooks_end_pass_trampoline ||
           value->commit == mb_sg_trace_hooks_commit_trampoline ||
           value->alloc_buffer == mb_sg_trace_hooks_alloc_buffer_trampoline ||
           value->alloc_image == mb_sg_trace_hooks_alloc_image_trampoline ||
           value->alloc_sampler == mb_sg_trace_hooks_alloc_sampler_trampoline ||
           value->alloc_shader == mb_sg_trace_hooks_alloc_shader_trampoline ||
           value->alloc_pipeline == mb_sg_trace_hooks_alloc_pipeline_trampoline ||
           value->alloc_view == mb_sg_trace_hooks_alloc_view_trampoline ||
           value->dealloc_buffer == mb_sg_trace_hooks_dealloc_buffer_trampoline ||
           value->dealloc_image == mb_sg_trace_hooks_dealloc_image_trampoline ||
           value->dealloc_sampler == mb_sg_trace_hooks_dealloc_sampler_trampoline ||
           value->dealloc_shader == mb_sg_trace_hooks_dealloc_shader_trampoline ||
           value->dealloc_pipeline == mb_sg_trace_hooks_dealloc_pipeline_trampoline ||
           value->dealloc_view == mb_sg_trace_hooks_dealloc_view_trampoline ||
           value->init_buffer == mb_sg_trace_hooks_init_buffer_trampoline ||
           value->init_image == mb_sg_trace_hooks_init_image_trampoline ||
           value->init_sampler == mb_sg_trace_hooks_init_sampler_trampoline ||
           value->init_shader == mb_sg_trace_hooks_init_shader_trampoline ||
           value->init_pipeline == mb_sg_trace_hooks_init_pipeline_trampoline ||
           value->init_view == mb_sg_trace_hooks_init_view_trampoline ||
           value->uninit_buffer == mb_sg_trace_hooks_uninit_buffer_trampoline ||
           value->uninit_image == mb_sg_trace_hooks_uninit_image_trampoline ||
           value->uninit_sampler == mb_sg_trace_hooks_uninit_sampler_trampoline ||
           value->uninit_shader == mb_sg_trace_hooks_uninit_shader_trampoline ||
           value->uninit_pipeline == mb_sg_trace_hooks_uninit_pipeline_trampoline ||
           value->uninit_view == mb_sg_trace_hooks_uninit_view_trampoline ||
           value->fail_buffer == mb_sg_trace_hooks_fail_buffer_trampoline ||
           value->fail_image == mb_sg_trace_hooks_fail_image_trampoline ||
           value->fail_sampler == mb_sg_trace_hooks_fail_sampler_trampoline ||
           value->fail_shader == mb_sg_trace_hooks_fail_shader_trampoline ||
           value->fail_pipeline == mb_sg_trace_hooks_fail_pipeline_trampoline ||
           value->fail_view == mb_sg_trace_hooks_fail_view_trampoline ||
           value->push_debug_group == mb_sg_trace_hooks_push_debug_group_trampoline ||
           value->pop_debug_group == mb_sg_trace_hooks_pop_debug_group_trampoline;
}

static void mb_validate_sg_trace_hooks(const sg_trace_hooks *value) {
    if (value->reset_state_cache &&
        value->reset_state_cache != mb_sg_trace_hooks_reset_state_cache_trampoline) {
        abort();
    }
    if (value->make_buffer && value->make_buffer != mb_sg_trace_hooks_make_buffer_trampoline) {
        abort();
    }
    if (value->make_image && value->make_image != mb_sg_trace_hooks_make_image_trampoline) {
        abort();
    }
    if (value->make_sampler && value->make_sampler != mb_sg_trace_hooks_make_sampler_trampoline) {
        abort();
    }
    if (value->make_shader && value->make_shader != mb_sg_trace_hooks_make_shader_trampoline) {
        abort();
    }
    if (value->make_pipeline &&
        value->make_pipeline != mb_sg_trace_hooks_make_pipeline_trampoline) {
        abort();
    }
    if (value->make_view && value->make_view != mb_sg_trace_hooks_make_view_trampoline) {
        abort();
    }
    if (value->destroy_buffer &&
        value->destroy_buffer != mb_sg_trace_hooks_destroy_buffer_trampoline) {
        abort();
    }
    if (value->destroy_image &&
        value->destroy_image != mb_sg_trace_hooks_destroy_image_trampoline) {
        abort();
    }
    if (value->destroy_sampler &&
        value->destroy_sampler != mb_sg_trace_hooks_destroy_sampler_trampoline) {
        abort();
    }
    if (value->destroy_shader &&
        value->destroy_shader != mb_sg_trace_hooks_destroy_shader_trampoline) {
        abort();
    }
    if (value->destroy_pipeline &&
        value->destroy_pipeline != mb_sg_trace_hooks_destroy_pipeline_trampoline) {
        abort();
    }
    if (value->destroy_view && value->destroy_view != mb_sg_trace_hooks_destroy_view_trampoline) {
        abort();
    }
    if (value->write_buffer_transient &&
        value->write_buffer_transient != mb_sg_trace_hooks_write_buffer_transient_trampoline) {
        abort();
    }
    if (value->write_image_transient &&
        value->write_image_transient != mb_sg_trace_hooks_write_image_transient_trampoline) {
        abort();
    }
    if (value->write_buffer_unsealed &&
        value->write_buffer_unsealed != mb_sg_trace_hooks_write_buffer_unsealed_trampoline) {
        abort();
    }
    if (value->write_image_unsealed &&
        value->write_image_unsealed != mb_sg_trace_hooks_write_image_unsealed_trampoline) {
        abort();
    }
    if (value->seal_buffer && value->seal_buffer != mb_sg_trace_hooks_seal_buffer_trampoline) {
        abort();
    }
    if (value->seal_image && value->seal_image != mb_sg_trace_hooks_seal_image_trampoline) {
        abort();
    }
    if (value->copy_buffer_to_buffer &&
        value->copy_buffer_to_buffer != mb_sg_trace_hooks_copy_buffer_to_buffer_trampoline) {
        abort();
    }
    if (value->copy_buffer_to_image &&
        value->copy_buffer_to_image != mb_sg_trace_hooks_copy_buffer_to_image_trampoline) {
        abort();
    }
    if (value->copy_image_to_image &&
        value->copy_image_to_image != mb_sg_trace_hooks_copy_image_to_image_trampoline) {
        abort();
    }
    if (value->begin_pass && value->begin_pass != mb_sg_trace_hooks_begin_pass_trampoline) {
        abort();
    }
    if (value->apply_viewport &&
        value->apply_viewport != mb_sg_trace_hooks_apply_viewport_trampoline) {
        abort();
    }
    if (value->apply_scissor_rect &&
        value->apply_scissor_rect != mb_sg_trace_hooks_apply_scissor_rect_trampoline) {
        abort();
    }
    if (value->apply_pipeline &&
        value->apply_pipeline != mb_sg_trace_hooks_apply_pipeline_trampoline) {
        abort();
    }
    if (value->apply_bindings &&
        value->apply_bindings != mb_sg_trace_hooks_apply_bindings_trampoline) {
        abort();
    }
    if (value->apply_uniforms &&
        value->apply_uniforms != mb_sg_trace_hooks_apply_uniforms_trampoline) {
        abort();
    }
    if (value->draw && value->draw != mb_sg_trace_hooks_draw_trampoline) {
        abort();
    }
    if (value->draw_ex && value->draw_ex != mb_sg_trace_hooks_draw_ex_trampoline) {
        abort();
    }
    if (value->dispatch && value->dispatch != mb_sg_trace_hooks_dispatch_trampoline) {
        abort();
    }
    if (value->end_pass && value->end_pass != mb_sg_trace_hooks_end_pass_trampoline) {
        abort();
    }
    if (value->commit && value->commit != mb_sg_trace_hooks_commit_trampoline) {
        abort();
    }
    if (value->alloc_buffer && value->alloc_buffer != mb_sg_trace_hooks_alloc_buffer_trampoline) {
        abort();
    }
    if (value->alloc_image && value->alloc_image != mb_sg_trace_hooks_alloc_image_trampoline) {
        abort();
    }
    if (value->alloc_sampler &&
        value->alloc_sampler != mb_sg_trace_hooks_alloc_sampler_trampoline) {
        abort();
    }
    if (value->alloc_shader && value->alloc_shader != mb_sg_trace_hooks_alloc_shader_trampoline) {
        abort();
    }
    if (value->alloc_pipeline &&
        value->alloc_pipeline != mb_sg_trace_hooks_alloc_pipeline_trampoline) {
        abort();
    }
    if (value->alloc_view && value->alloc_view != mb_sg_trace_hooks_alloc_view_trampoline) {
        abort();
    }
    if (value->dealloc_buffer &&
        value->dealloc_buffer != mb_sg_trace_hooks_dealloc_buffer_trampoline) {
        abort();
    }
    if (value->dealloc_image &&
        value->dealloc_image != mb_sg_trace_hooks_dealloc_image_trampoline) {
        abort();
    }
    if (value->dealloc_sampler &&
        value->dealloc_sampler != mb_sg_trace_hooks_dealloc_sampler_trampoline) {
        abort();
    }
    if (value->dealloc_shader &&
        value->dealloc_shader != mb_sg_trace_hooks_dealloc_shader_trampoline) {
        abort();
    }
    if (value->dealloc_pipeline &&
        value->dealloc_pipeline != mb_sg_trace_hooks_dealloc_pipeline_trampoline) {
        abort();
    }
    if (value->dealloc_view && value->dealloc_view != mb_sg_trace_hooks_dealloc_view_trampoline) {
        abort();
    }
    if (value->init_buffer && value->init_buffer != mb_sg_trace_hooks_init_buffer_trampoline) {
        abort();
    }
    if (value->init_image && value->init_image != mb_sg_trace_hooks_init_image_trampoline) {
        abort();
    }
    if (value->init_sampler && value->init_sampler != mb_sg_trace_hooks_init_sampler_trampoline) {
        abort();
    }
    if (value->init_shader && value->init_shader != mb_sg_trace_hooks_init_shader_trampoline) {
        abort();
    }
    if (value->init_pipeline &&
        value->init_pipeline != mb_sg_trace_hooks_init_pipeline_trampoline) {
        abort();
    }
    if (value->init_view && value->init_view != mb_sg_trace_hooks_init_view_trampoline) {
        abort();
    }
    if (value->uninit_buffer &&
        value->uninit_buffer != mb_sg_trace_hooks_uninit_buffer_trampoline) {
        abort();
    }
    if (value->uninit_image && value->uninit_image != mb_sg_trace_hooks_uninit_image_trampoline) {
        abort();
    }
    if (value->uninit_sampler &&
        value->uninit_sampler != mb_sg_trace_hooks_uninit_sampler_trampoline) {
        abort();
    }
    if (value->uninit_shader &&
        value->uninit_shader != mb_sg_trace_hooks_uninit_shader_trampoline) {
        abort();
    }
    if (value->uninit_pipeline &&
        value->uninit_pipeline != mb_sg_trace_hooks_uninit_pipeline_trampoline) {
        abort();
    }
    if (value->uninit_view && value->uninit_view != mb_sg_trace_hooks_uninit_view_trampoline) {
        abort();
    }
    if (value->fail_buffer && value->fail_buffer != mb_sg_trace_hooks_fail_buffer_trampoline) {
        abort();
    }
    if (value->fail_image && value->fail_image != mb_sg_trace_hooks_fail_image_trampoline) {
        abort();
    }
    if (value->fail_sampler && value->fail_sampler != mb_sg_trace_hooks_fail_sampler_trampoline) {
        abort();
    }
    if (value->fail_shader && value->fail_shader != mb_sg_trace_hooks_fail_shader_trampoline) {
        abort();
    }
    if (value->fail_pipeline &&
        value->fail_pipeline != mb_sg_trace_hooks_fail_pipeline_trampoline) {
        abort();
    }
    if (value->fail_view && value->fail_view != mb_sg_trace_hooks_fail_view_trampoline) {
        abort();
    }
    if (value->push_debug_group &&
        value->push_debug_group != mb_sg_trace_hooks_push_debug_group_trampoline) {
        abort();
    }
    if (value->pop_debug_group &&
        value->pop_debug_group != mb_sg_trace_hooks_pop_debug_group_trampoline) {
        abort();
    }
}

static mb_sg_trace_hooks_callbacks *mb_copy_sg_trace_hooks_context(const sg_trace_hooks *value,
                                                                   int excluded) {
    mb_sg_trace_hooks_callbacks *copy = mb_malloc(sizeof(*copy));
    if (mb_managed_sg_trace_hooks(value)) {
        *copy = *(mb_sg_trace_hooks_callbacks *)value->user_data;
    }
    if (excluded != MB_SG_TRACE_HOOKS_RESET_STATE_CACHE && copy->reset_state_cache.closure) {
        moonbit_incref(copy->reset_state_cache.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_MAKE_BUFFER && copy->make_buffer.closure) {
        moonbit_incref(copy->make_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_MAKE_IMAGE && copy->make_image.closure) {
        moonbit_incref(copy->make_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_MAKE_SAMPLER && copy->make_sampler.closure) {
        moonbit_incref(copy->make_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_MAKE_SHADER && copy->make_shader.closure) {
        moonbit_incref(copy->make_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_MAKE_PIPELINE && copy->make_pipeline.closure) {
        moonbit_incref(copy->make_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_MAKE_VIEW && copy->make_view.closure) {
        moonbit_incref(copy->make_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DESTROY_BUFFER && copy->destroy_buffer.closure) {
        moonbit_incref(copy->destroy_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DESTROY_IMAGE && copy->destroy_image.closure) {
        moonbit_incref(copy->destroy_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DESTROY_SAMPLER && copy->destroy_sampler.closure) {
        moonbit_incref(copy->destroy_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DESTROY_SHADER && copy->destroy_shader.closure) {
        moonbit_incref(copy->destroy_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DESTROY_PIPELINE && copy->destroy_pipeline.closure) {
        moonbit_incref(copy->destroy_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DESTROY_VIEW && copy->destroy_view.closure) {
        moonbit_incref(copy->destroy_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_WRITE_BUFFER_TRANSIENT &&
        copy->write_buffer_transient.closure) {
        moonbit_incref(copy->write_buffer_transient.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_WRITE_IMAGE_TRANSIENT &&
        copy->write_image_transient.closure) {
        moonbit_incref(copy->write_image_transient.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_WRITE_BUFFER_UNSEALED &&
        copy->write_buffer_unsealed.closure) {
        moonbit_incref(copy->write_buffer_unsealed.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_WRITE_IMAGE_UNSEALED && copy->write_image_unsealed.closure) {
        moonbit_incref(copy->write_image_unsealed.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_SEAL_BUFFER && copy->seal_buffer.closure) {
        moonbit_incref(copy->seal_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_SEAL_IMAGE && copy->seal_image.closure) {
        moonbit_incref(copy->seal_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_COPY_BUFFER_TO_BUFFER &&
        copy->copy_buffer_to_buffer.closure) {
        moonbit_incref(copy->copy_buffer_to_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_COPY_BUFFER_TO_IMAGE && copy->copy_buffer_to_image.closure) {
        moonbit_incref(copy->copy_buffer_to_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_COPY_IMAGE_TO_IMAGE && copy->copy_image_to_image.closure) {
        moonbit_incref(copy->copy_image_to_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_BEGIN_PASS && copy->begin_pass.closure) {
        moonbit_incref(copy->begin_pass.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_APPLY_VIEWPORT && copy->apply_viewport.closure) {
        moonbit_incref(copy->apply_viewport.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_APPLY_SCISSOR_RECT && copy->apply_scissor_rect.closure) {
        moonbit_incref(copy->apply_scissor_rect.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_APPLY_PIPELINE && copy->apply_pipeline.closure) {
        moonbit_incref(copy->apply_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_APPLY_BINDINGS && copy->apply_bindings.closure) {
        moonbit_incref(copy->apply_bindings.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_APPLY_UNIFORMS && copy->apply_uniforms.closure) {
        moonbit_incref(copy->apply_uniforms.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DRAW && copy->draw.closure) {
        moonbit_incref(copy->draw.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DRAW_EX && copy->draw_ex.closure) {
        moonbit_incref(copy->draw_ex.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DISPATCH && copy->dispatch.closure) {
        moonbit_incref(copy->dispatch.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_END_PASS && copy->end_pass.closure) {
        moonbit_incref(copy->end_pass.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_COMMIT && copy->commit.closure) {
        moonbit_incref(copy->commit.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_ALLOC_BUFFER && copy->alloc_buffer.closure) {
        moonbit_incref(copy->alloc_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_ALLOC_IMAGE && copy->alloc_image.closure) {
        moonbit_incref(copy->alloc_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_ALLOC_SAMPLER && copy->alloc_sampler.closure) {
        moonbit_incref(copy->alloc_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_ALLOC_SHADER && copy->alloc_shader.closure) {
        moonbit_incref(copy->alloc_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_ALLOC_PIPELINE && copy->alloc_pipeline.closure) {
        moonbit_incref(copy->alloc_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_ALLOC_VIEW && copy->alloc_view.closure) {
        moonbit_incref(copy->alloc_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DEALLOC_BUFFER && copy->dealloc_buffer.closure) {
        moonbit_incref(copy->dealloc_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DEALLOC_IMAGE && copy->dealloc_image.closure) {
        moonbit_incref(copy->dealloc_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DEALLOC_SAMPLER && copy->dealloc_sampler.closure) {
        moonbit_incref(copy->dealloc_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DEALLOC_SHADER && copy->dealloc_shader.closure) {
        moonbit_incref(copy->dealloc_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DEALLOC_PIPELINE && copy->dealloc_pipeline.closure) {
        moonbit_incref(copy->dealloc_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_DEALLOC_VIEW && copy->dealloc_view.closure) {
        moonbit_incref(copy->dealloc_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_INIT_BUFFER && copy->init_buffer.closure) {
        moonbit_incref(copy->init_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_INIT_IMAGE && copy->init_image.closure) {
        moonbit_incref(copy->init_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_INIT_SAMPLER && copy->init_sampler.closure) {
        moonbit_incref(copy->init_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_INIT_SHADER && copy->init_shader.closure) {
        moonbit_incref(copy->init_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_INIT_PIPELINE && copy->init_pipeline.closure) {
        moonbit_incref(copy->init_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_INIT_VIEW && copy->init_view.closure) {
        moonbit_incref(copy->init_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_UNINIT_BUFFER && copy->uninit_buffer.closure) {
        moonbit_incref(copy->uninit_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_UNINIT_IMAGE && copy->uninit_image.closure) {
        moonbit_incref(copy->uninit_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_UNINIT_SAMPLER && copy->uninit_sampler.closure) {
        moonbit_incref(copy->uninit_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_UNINIT_SHADER && copy->uninit_shader.closure) {
        moonbit_incref(copy->uninit_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_UNINIT_PIPELINE && copy->uninit_pipeline.closure) {
        moonbit_incref(copy->uninit_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_UNINIT_VIEW && copy->uninit_view.closure) {
        moonbit_incref(copy->uninit_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_FAIL_BUFFER && copy->fail_buffer.closure) {
        moonbit_incref(copy->fail_buffer.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_FAIL_IMAGE && copy->fail_image.closure) {
        moonbit_incref(copy->fail_image.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_FAIL_SAMPLER && copy->fail_sampler.closure) {
        moonbit_incref(copy->fail_sampler.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_FAIL_SHADER && copy->fail_shader.closure) {
        moonbit_incref(copy->fail_shader.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_FAIL_PIPELINE && copy->fail_pipeline.closure) {
        moonbit_incref(copy->fail_pipeline.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_FAIL_VIEW && copy->fail_view.closure) {
        moonbit_incref(copy->fail_view.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_PUSH_DEBUG_GROUP && copy->push_debug_group.closure) {
        moonbit_incref(copy->push_debug_group.closure);
    }
    if (excluded != MB_SG_TRACE_HOOKS_POP_DEBUG_GROUP && copy->pop_debug_group.closure) {
        moonbit_incref(copy->pop_debug_group.closure);
    }
    return copy;
}

static void mb_clone_sg_trace_hooks_callbacks(sg_trace_hooks *destination,
                                              const sg_trace_hooks *source) {
    if (!mb_managed_sg_trace_hooks(source)) {
        return;
    }
    destination->user_data = mb_copy_sg_trace_hooks_context(source, -1);
}

static void mb_drop_sg_trace_hooks_callbacks(sg_trace_hooks *value) {
    if (!mb_managed_sg_trace_hooks(value)) {
        return;
    }
    mb_sg_trace_hooks_callbacks *context = value->user_data;
    if (context->reset_state_cache.closure) {
        moonbit_decref(context->reset_state_cache.closure);
    }
    if (context->make_buffer.closure) {
        moonbit_decref(context->make_buffer.closure);
    }
    if (context->make_image.closure) {
        moonbit_decref(context->make_image.closure);
    }
    if (context->make_sampler.closure) {
        moonbit_decref(context->make_sampler.closure);
    }
    if (context->make_shader.closure) {
        moonbit_decref(context->make_shader.closure);
    }
    if (context->make_pipeline.closure) {
        moonbit_decref(context->make_pipeline.closure);
    }
    if (context->make_view.closure) {
        moonbit_decref(context->make_view.closure);
    }
    if (context->destroy_buffer.closure) {
        moonbit_decref(context->destroy_buffer.closure);
    }
    if (context->destroy_image.closure) {
        moonbit_decref(context->destroy_image.closure);
    }
    if (context->destroy_sampler.closure) {
        moonbit_decref(context->destroy_sampler.closure);
    }
    if (context->destroy_shader.closure) {
        moonbit_decref(context->destroy_shader.closure);
    }
    if (context->destroy_pipeline.closure) {
        moonbit_decref(context->destroy_pipeline.closure);
    }
    if (context->destroy_view.closure) {
        moonbit_decref(context->destroy_view.closure);
    }
    if (context->write_buffer_transient.closure) {
        moonbit_decref(context->write_buffer_transient.closure);
    }
    if (context->write_image_transient.closure) {
        moonbit_decref(context->write_image_transient.closure);
    }
    if (context->write_buffer_unsealed.closure) {
        moonbit_decref(context->write_buffer_unsealed.closure);
    }
    if (context->write_image_unsealed.closure) {
        moonbit_decref(context->write_image_unsealed.closure);
    }
    if (context->seal_buffer.closure) {
        moonbit_decref(context->seal_buffer.closure);
    }
    if (context->seal_image.closure) {
        moonbit_decref(context->seal_image.closure);
    }
    if (context->copy_buffer_to_buffer.closure) {
        moonbit_decref(context->copy_buffer_to_buffer.closure);
    }
    if (context->copy_buffer_to_image.closure) {
        moonbit_decref(context->copy_buffer_to_image.closure);
    }
    if (context->copy_image_to_image.closure) {
        moonbit_decref(context->copy_image_to_image.closure);
    }
    if (context->begin_pass.closure) {
        moonbit_decref(context->begin_pass.closure);
    }
    if (context->apply_viewport.closure) {
        moonbit_decref(context->apply_viewport.closure);
    }
    if (context->apply_scissor_rect.closure) {
        moonbit_decref(context->apply_scissor_rect.closure);
    }
    if (context->apply_pipeline.closure) {
        moonbit_decref(context->apply_pipeline.closure);
    }
    if (context->apply_bindings.closure) {
        moonbit_decref(context->apply_bindings.closure);
    }
    if (context->apply_uniforms.closure) {
        moonbit_decref(context->apply_uniforms.closure);
    }
    if (context->draw.closure) {
        moonbit_decref(context->draw.closure);
    }
    if (context->draw_ex.closure) {
        moonbit_decref(context->draw_ex.closure);
    }
    if (context->dispatch.closure) {
        moonbit_decref(context->dispatch.closure);
    }
    if (context->end_pass.closure) {
        moonbit_decref(context->end_pass.closure);
    }
    if (context->commit.closure) {
        moonbit_decref(context->commit.closure);
    }
    if (context->alloc_buffer.closure) {
        moonbit_decref(context->alloc_buffer.closure);
    }
    if (context->alloc_image.closure) {
        moonbit_decref(context->alloc_image.closure);
    }
    if (context->alloc_sampler.closure) {
        moonbit_decref(context->alloc_sampler.closure);
    }
    if (context->alloc_shader.closure) {
        moonbit_decref(context->alloc_shader.closure);
    }
    if (context->alloc_pipeline.closure) {
        moonbit_decref(context->alloc_pipeline.closure);
    }
    if (context->alloc_view.closure) {
        moonbit_decref(context->alloc_view.closure);
    }
    if (context->dealloc_buffer.closure) {
        moonbit_decref(context->dealloc_buffer.closure);
    }
    if (context->dealloc_image.closure) {
        moonbit_decref(context->dealloc_image.closure);
    }
    if (context->dealloc_sampler.closure) {
        moonbit_decref(context->dealloc_sampler.closure);
    }
    if (context->dealloc_shader.closure) {
        moonbit_decref(context->dealloc_shader.closure);
    }
    if (context->dealloc_pipeline.closure) {
        moonbit_decref(context->dealloc_pipeline.closure);
    }
    if (context->dealloc_view.closure) {
        moonbit_decref(context->dealloc_view.closure);
    }
    if (context->init_buffer.closure) {
        moonbit_decref(context->init_buffer.closure);
    }
    if (context->init_image.closure) {
        moonbit_decref(context->init_image.closure);
    }
    if (context->init_sampler.closure) {
        moonbit_decref(context->init_sampler.closure);
    }
    if (context->init_shader.closure) {
        moonbit_decref(context->init_shader.closure);
    }
    if (context->init_pipeline.closure) {
        moonbit_decref(context->init_pipeline.closure);
    }
    if (context->init_view.closure) {
        moonbit_decref(context->init_view.closure);
    }
    if (context->uninit_buffer.closure) {
        moonbit_decref(context->uninit_buffer.closure);
    }
    if (context->uninit_image.closure) {
        moonbit_decref(context->uninit_image.closure);
    }
    if (context->uninit_sampler.closure) {
        moonbit_decref(context->uninit_sampler.closure);
    }
    if (context->uninit_shader.closure) {
        moonbit_decref(context->uninit_shader.closure);
    }
    if (context->uninit_pipeline.closure) {
        moonbit_decref(context->uninit_pipeline.closure);
    }
    if (context->uninit_view.closure) {
        moonbit_decref(context->uninit_view.closure);
    }
    if (context->fail_buffer.closure) {
        moonbit_decref(context->fail_buffer.closure);
    }
    if (context->fail_image.closure) {
        moonbit_decref(context->fail_image.closure);
    }
    if (context->fail_sampler.closure) {
        moonbit_decref(context->fail_sampler.closure);
    }
    if (context->fail_shader.closure) {
        moonbit_decref(context->fail_shader.closure);
    }
    if (context->fail_pipeline.closure) {
        moonbit_decref(context->fail_pipeline.closure);
    }
    if (context->fail_view.closure) {
        moonbit_decref(context->fail_view.closure);
    }
    if (context->push_debug_group.closure) {
        moonbit_decref(context->push_debug_group.closure);
    }
    if (context->pop_debug_group.closure) {
        moonbit_decref(context->pop_debug_group.closure);
    }
    free(context);
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_reset_state_cache(
    sg_trace_hooks *self, mb_sg_trace_hooks_reset_state_cache_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_RESET_STATE_CACHE);
    context->reset_state_cache.closure = closure;
    context->reset_state_cache.call = call;
    result->user_data = context;
    result->reset_state_cache = mb_sg_trace_hooks_reset_state_cache_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_make_buffer(sg_trace_hooks *self, mb_sg_trace_hooks_make_buffer_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_MAKE_BUFFER);
    context->make_buffer.closure = closure;
    context->make_buffer.call = call;
    result->user_data = context;
    result->make_buffer = mb_sg_trace_hooks_make_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_make_image(sg_trace_hooks *self, mb_sg_trace_hooks_make_image_call call,
                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_MAKE_IMAGE);
    context->make_image.closure = closure;
    context->make_image.call = call;
    result->user_data = context;
    result->make_image = mb_sg_trace_hooks_make_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_make_sampler(sg_trace_hooks *self, mb_sg_trace_hooks_make_sampler_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_MAKE_SAMPLER);
    context->make_sampler.closure = closure;
    context->make_sampler.call = call;
    result->user_data = context;
    result->make_sampler = mb_sg_trace_hooks_make_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_make_shader(sg_trace_hooks *self, mb_sg_trace_hooks_make_shader_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_MAKE_SHADER);
    context->make_shader.closure = closure;
    context->make_shader.call = call;
    result->user_data = context;
    result->make_shader = mb_sg_trace_hooks_make_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_make_pipeline(sg_trace_hooks *self, mb_sg_trace_hooks_make_pipeline_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_MAKE_PIPELINE);
    context->make_pipeline.closure = closure;
    context->make_pipeline.call = call;
    result->user_data = context;
    result->make_pipeline = mb_sg_trace_hooks_make_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_make_view(sg_trace_hooks *self, mb_sg_trace_hooks_make_view_call call,
                               void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_MAKE_VIEW);
    context->make_view.closure = closure;
    context->make_view.call = call;
    result->user_data = context;
    result->make_view = mb_sg_trace_hooks_make_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_destroy_buffer(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_destroy_buffer_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DESTROY_BUFFER);
    context->destroy_buffer.closure = closure;
    context->destroy_buffer.call = call;
    result->user_data = context;
    result->destroy_buffer = mb_sg_trace_hooks_destroy_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_destroy_image(sg_trace_hooks *self, mb_sg_trace_hooks_destroy_image_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DESTROY_IMAGE);
    context->destroy_image.closure = closure;
    context->destroy_image.call = call;
    result->user_data = context;
    result->destroy_image = mb_sg_trace_hooks_destroy_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_destroy_sampler(sg_trace_hooks *self,
                                     mb_sg_trace_hooks_destroy_sampler_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DESTROY_SAMPLER);
    context->destroy_sampler.closure = closure;
    context->destroy_sampler.call = call;
    result->user_data = context;
    result->destroy_sampler = mb_sg_trace_hooks_destroy_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_destroy_shader(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_destroy_shader_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DESTROY_SHADER);
    context->destroy_shader.closure = closure;
    context->destroy_shader.call = call;
    result->user_data = context;
    result->destroy_shader = mb_sg_trace_hooks_destroy_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_destroy_pipeline(sg_trace_hooks *self,
                                      mb_sg_trace_hooks_destroy_pipeline_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DESTROY_PIPELINE);
    context->destroy_pipeline.closure = closure;
    context->destroy_pipeline.call = call;
    result->user_data = context;
    result->destroy_pipeline = mb_sg_trace_hooks_destroy_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_destroy_view(sg_trace_hooks *self, mb_sg_trace_hooks_destroy_view_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DESTROY_VIEW);
    context->destroy_view.closure = closure;
    context->destroy_view.call = call;
    result->user_data = context;
    result->destroy_view = mb_sg_trace_hooks_destroy_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_write_buffer_transient(
    sg_trace_hooks *self, mb_sg_trace_hooks_write_buffer_transient_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_WRITE_BUFFER_TRANSIENT);
    context->write_buffer_transient.closure = closure;
    context->write_buffer_transient.call = call;
    result->user_data = context;
    result->write_buffer_transient = mb_sg_trace_hooks_write_buffer_transient_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_write_image_transient(
    sg_trace_hooks *self, mb_sg_trace_hooks_write_image_transient_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_WRITE_IMAGE_TRANSIENT);
    context->write_image_transient.closure = closure;
    context->write_image_transient.call = call;
    result->user_data = context;
    result->write_image_transient = mb_sg_trace_hooks_write_image_transient_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_write_buffer_unsealed(
    sg_trace_hooks *self, mb_sg_trace_hooks_write_buffer_unsealed_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_WRITE_BUFFER_UNSEALED);
    context->write_buffer_unsealed.closure = closure;
    context->write_buffer_unsealed.call = call;
    result->user_data = context;
    result->write_buffer_unsealed = mb_sg_trace_hooks_write_buffer_unsealed_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_write_image_unsealed(
    sg_trace_hooks *self, mb_sg_trace_hooks_write_image_unsealed_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_WRITE_IMAGE_UNSEALED);
    context->write_image_unsealed.closure = closure;
    context->write_image_unsealed.call = call;
    result->user_data = context;
    result->write_image_unsealed = mb_sg_trace_hooks_write_image_unsealed_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_seal_buffer(sg_trace_hooks *self, mb_sg_trace_hooks_seal_buffer_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_SEAL_BUFFER);
    context->seal_buffer.closure = closure;
    context->seal_buffer.call = call;
    result->user_data = context;
    result->seal_buffer = mb_sg_trace_hooks_seal_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_seal_image(sg_trace_hooks *self, mb_sg_trace_hooks_seal_image_call call,
                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_SEAL_IMAGE);
    context->seal_image.closure = closure;
    context->seal_image.call = call;
    result->user_data = context;
    result->seal_image = mb_sg_trace_hooks_seal_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_copy_buffer_to_buffer(
    sg_trace_hooks *self, mb_sg_trace_hooks_copy_buffer_to_buffer_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_COPY_BUFFER_TO_BUFFER);
    context->copy_buffer_to_buffer.closure = closure;
    context->copy_buffer_to_buffer.call = call;
    result->user_data = context;
    result->copy_buffer_to_buffer = mb_sg_trace_hooks_copy_buffer_to_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_copy_buffer_to_image(
    sg_trace_hooks *self, mb_sg_trace_hooks_copy_buffer_to_image_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_COPY_BUFFER_TO_IMAGE);
    context->copy_buffer_to_image.closure = closure;
    context->copy_buffer_to_image.call = call;
    result->user_data = context;
    result->copy_buffer_to_image = mb_sg_trace_hooks_copy_buffer_to_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_copy_image_to_image(
    sg_trace_hooks *self, mb_sg_trace_hooks_copy_image_to_image_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_COPY_IMAGE_TO_IMAGE);
    context->copy_image_to_image.closure = closure;
    context->copy_image_to_image.call = call;
    result->user_data = context;
    result->copy_image_to_image = mb_sg_trace_hooks_copy_image_to_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_begin_pass(sg_trace_hooks *self, mb_sg_trace_hooks_begin_pass_call call,
                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_BEGIN_PASS);
    context->begin_pass.closure = closure;
    context->begin_pass.call = call;
    result->user_data = context;
    result->begin_pass = mb_sg_trace_hooks_begin_pass_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_apply_viewport(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_apply_viewport_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_APPLY_VIEWPORT);
    context->apply_viewport.closure = closure;
    context->apply_viewport.call = call;
    result->user_data = context;
    result->apply_viewport = mb_sg_trace_hooks_apply_viewport_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_apply_scissor_rect(
    sg_trace_hooks *self, mb_sg_trace_hooks_apply_scissor_rect_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_APPLY_SCISSOR_RECT);
    context->apply_scissor_rect.closure = closure;
    context->apply_scissor_rect.call = call;
    result->user_data = context;
    result->apply_scissor_rect = mb_sg_trace_hooks_apply_scissor_rect_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_apply_pipeline(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_apply_pipeline_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_APPLY_PIPELINE);
    context->apply_pipeline.closure = closure;
    context->apply_pipeline.call = call;
    result->user_data = context;
    result->apply_pipeline = mb_sg_trace_hooks_apply_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_apply_bindings(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_apply_bindings_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_APPLY_BINDINGS);
    context->apply_bindings.closure = closure;
    context->apply_bindings.call = call;
    result->user_data = context;
    result->apply_bindings = mb_sg_trace_hooks_apply_bindings_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_apply_uniforms(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_apply_uniforms_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_APPLY_UNIFORMS);
    context->apply_uniforms.closure = closure;
    context->apply_uniforms.call = call;
    result->user_data = context;
    result->apply_uniforms = mb_sg_trace_hooks_apply_uniforms_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_draw(sg_trace_hooks *self, mb_sg_trace_hooks_draw_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DRAW);
    context->draw.closure = closure;
    context->draw.call = call;
    result->user_data = context;
    result->draw = mb_sg_trace_hooks_draw_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_draw_ex(sg_trace_hooks *self,
                                                                mb_sg_trace_hooks_draw_ex_call call,
                                                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DRAW_EX);
    context->draw_ex.closure = closure;
    context->draw_ex.call = call;
    result->user_data = context;
    result->draw_ex = mb_sg_trace_hooks_draw_ex_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dispatch(sg_trace_hooks *self, mb_sg_trace_hooks_dispatch_call call,
                              void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DISPATCH);
    context->dispatch.closure = closure;
    context->dispatch.call = call;
    result->user_data = context;
    result->dispatch = mb_sg_trace_hooks_dispatch_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_end_pass(sg_trace_hooks *self, mb_sg_trace_hooks_end_pass_call call,
                              void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_END_PASS);
    context->end_pass.closure = closure;
    context->end_pass.call = call;
    result->user_data = context;
    result->end_pass = mb_sg_trace_hooks_end_pass_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *mb_sg_trace_hooks_on_commit(sg_trace_hooks *self,
                                                               mb_sg_trace_hooks_commit_call call,
                                                               void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_COMMIT);
    context->commit.closure = closure;
    context->commit.call = call;
    result->user_data = context;
    result->commit = mb_sg_trace_hooks_commit_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_alloc_buffer(sg_trace_hooks *self, mb_sg_trace_hooks_alloc_buffer_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_ALLOC_BUFFER);
    context->alloc_buffer.closure = closure;
    context->alloc_buffer.call = call;
    result->user_data = context;
    result->alloc_buffer = mb_sg_trace_hooks_alloc_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_alloc_image(sg_trace_hooks *self, mb_sg_trace_hooks_alloc_image_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_ALLOC_IMAGE);
    context->alloc_image.closure = closure;
    context->alloc_image.call = call;
    result->user_data = context;
    result->alloc_image = mb_sg_trace_hooks_alloc_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_alloc_sampler(sg_trace_hooks *self, mb_sg_trace_hooks_alloc_sampler_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_ALLOC_SAMPLER);
    context->alloc_sampler.closure = closure;
    context->alloc_sampler.call = call;
    result->user_data = context;
    result->alloc_sampler = mb_sg_trace_hooks_alloc_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_alloc_shader(sg_trace_hooks *self, mb_sg_trace_hooks_alloc_shader_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_ALLOC_SHADER);
    context->alloc_shader.closure = closure;
    context->alloc_shader.call = call;
    result->user_data = context;
    result->alloc_shader = mb_sg_trace_hooks_alloc_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_alloc_pipeline(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_alloc_pipeline_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_ALLOC_PIPELINE);
    context->alloc_pipeline.closure = closure;
    context->alloc_pipeline.call = call;
    result->user_data = context;
    result->alloc_pipeline = mb_sg_trace_hooks_alloc_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_alloc_view(sg_trace_hooks *self, mb_sg_trace_hooks_alloc_view_call call,
                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_ALLOC_VIEW);
    context->alloc_view.closure = closure;
    context->alloc_view.call = call;
    result->user_data = context;
    result->alloc_view = mb_sg_trace_hooks_alloc_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dealloc_buffer(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_dealloc_buffer_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DEALLOC_BUFFER);
    context->dealloc_buffer.closure = closure;
    context->dealloc_buffer.call = call;
    result->user_data = context;
    result->dealloc_buffer = mb_sg_trace_hooks_dealloc_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dealloc_image(sg_trace_hooks *self, mb_sg_trace_hooks_dealloc_image_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DEALLOC_IMAGE);
    context->dealloc_image.closure = closure;
    context->dealloc_image.call = call;
    result->user_data = context;
    result->dealloc_image = mb_sg_trace_hooks_dealloc_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dealloc_sampler(sg_trace_hooks *self,
                                     mb_sg_trace_hooks_dealloc_sampler_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DEALLOC_SAMPLER);
    context->dealloc_sampler.closure = closure;
    context->dealloc_sampler.call = call;
    result->user_data = context;
    result->dealloc_sampler = mb_sg_trace_hooks_dealloc_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dealloc_shader(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_dealloc_shader_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DEALLOC_SHADER);
    context->dealloc_shader.closure = closure;
    context->dealloc_shader.call = call;
    result->user_data = context;
    result->dealloc_shader = mb_sg_trace_hooks_dealloc_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dealloc_pipeline(sg_trace_hooks *self,
                                      mb_sg_trace_hooks_dealloc_pipeline_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DEALLOC_PIPELINE);
    context->dealloc_pipeline.closure = closure;
    context->dealloc_pipeline.call = call;
    result->user_data = context;
    result->dealloc_pipeline = mb_sg_trace_hooks_dealloc_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_dealloc_view(sg_trace_hooks *self, mb_sg_trace_hooks_dealloc_view_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_DEALLOC_VIEW);
    context->dealloc_view.closure = closure;
    context->dealloc_view.call = call;
    result->user_data = context;
    result->dealloc_view = mb_sg_trace_hooks_dealloc_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_init_buffer(sg_trace_hooks *self, mb_sg_trace_hooks_init_buffer_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_INIT_BUFFER);
    context->init_buffer.closure = closure;
    context->init_buffer.call = call;
    result->user_data = context;
    result->init_buffer = mb_sg_trace_hooks_init_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_init_image(sg_trace_hooks *self, mb_sg_trace_hooks_init_image_call call,
                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_INIT_IMAGE);
    context->init_image.closure = closure;
    context->init_image.call = call;
    result->user_data = context;
    result->init_image = mb_sg_trace_hooks_init_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_init_sampler(sg_trace_hooks *self, mb_sg_trace_hooks_init_sampler_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_INIT_SAMPLER);
    context->init_sampler.closure = closure;
    context->init_sampler.call = call;
    result->user_data = context;
    result->init_sampler = mb_sg_trace_hooks_init_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_init_shader(sg_trace_hooks *self, mb_sg_trace_hooks_init_shader_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_INIT_SHADER);
    context->init_shader.closure = closure;
    context->init_shader.call = call;
    result->user_data = context;
    result->init_shader = mb_sg_trace_hooks_init_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_init_pipeline(sg_trace_hooks *self, mb_sg_trace_hooks_init_pipeline_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_INIT_PIPELINE);
    context->init_pipeline.closure = closure;
    context->init_pipeline.call = call;
    result->user_data = context;
    result->init_pipeline = mb_sg_trace_hooks_init_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_init_view(sg_trace_hooks *self, mb_sg_trace_hooks_init_view_call call,
                               void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_INIT_VIEW);
    context->init_view.closure = closure;
    context->init_view.call = call;
    result->user_data = context;
    result->init_view = mb_sg_trace_hooks_init_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_uninit_buffer(sg_trace_hooks *self, mb_sg_trace_hooks_uninit_buffer_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_UNINIT_BUFFER);
    context->uninit_buffer.closure = closure;
    context->uninit_buffer.call = call;
    result->user_data = context;
    result->uninit_buffer = mb_sg_trace_hooks_uninit_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_uninit_image(sg_trace_hooks *self, mb_sg_trace_hooks_uninit_image_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_UNINIT_IMAGE);
    context->uninit_image.closure = closure;
    context->uninit_image.call = call;
    result->user_data = context;
    result->uninit_image = mb_sg_trace_hooks_uninit_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_uninit_sampler(sg_trace_hooks *self,
                                    mb_sg_trace_hooks_uninit_sampler_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_UNINIT_SAMPLER);
    context->uninit_sampler.closure = closure;
    context->uninit_sampler.call = call;
    result->user_data = context;
    result->uninit_sampler = mb_sg_trace_hooks_uninit_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_uninit_shader(sg_trace_hooks *self, mb_sg_trace_hooks_uninit_shader_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_UNINIT_SHADER);
    context->uninit_shader.closure = closure;
    context->uninit_shader.call = call;
    result->user_data = context;
    result->uninit_shader = mb_sg_trace_hooks_uninit_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_uninit_pipeline(sg_trace_hooks *self,
                                     mb_sg_trace_hooks_uninit_pipeline_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_UNINIT_PIPELINE);
    context->uninit_pipeline.closure = closure;
    context->uninit_pipeline.call = call;
    result->user_data = context;
    result->uninit_pipeline = mb_sg_trace_hooks_uninit_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_uninit_view(sg_trace_hooks *self, mb_sg_trace_hooks_uninit_view_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_UNINIT_VIEW);
    context->uninit_view.closure = closure;
    context->uninit_view.call = call;
    result->user_data = context;
    result->uninit_view = mb_sg_trace_hooks_uninit_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_fail_buffer(sg_trace_hooks *self, mb_sg_trace_hooks_fail_buffer_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_FAIL_BUFFER);
    context->fail_buffer.closure = closure;
    context->fail_buffer.call = call;
    result->user_data = context;
    result->fail_buffer = mb_sg_trace_hooks_fail_buffer_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_fail_image(sg_trace_hooks *self, mb_sg_trace_hooks_fail_image_call call,
                                void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_FAIL_IMAGE);
    context->fail_image.closure = closure;
    context->fail_image.call = call;
    result->user_data = context;
    result->fail_image = mb_sg_trace_hooks_fail_image_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_fail_sampler(sg_trace_hooks *self, mb_sg_trace_hooks_fail_sampler_call call,
                                  void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_FAIL_SAMPLER);
    context->fail_sampler.closure = closure;
    context->fail_sampler.call = call;
    result->user_data = context;
    result->fail_sampler = mb_sg_trace_hooks_fail_sampler_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_fail_shader(sg_trace_hooks *self, mb_sg_trace_hooks_fail_shader_call call,
                                 void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_FAIL_SHADER);
    context->fail_shader.closure = closure;
    context->fail_shader.call = call;
    result->user_data = context;
    result->fail_shader = mb_sg_trace_hooks_fail_shader_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_fail_pipeline(sg_trace_hooks *self, mb_sg_trace_hooks_fail_pipeline_call call,
                                   void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_FAIL_PIPELINE);
    context->fail_pipeline.closure = closure;
    context->fail_pipeline.call = call;
    result->user_data = context;
    result->fail_pipeline = mb_sg_trace_hooks_fail_pipeline_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_fail_view(sg_trace_hooks *self, mb_sg_trace_hooks_fail_view_call call,
                               void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_FAIL_VIEW);
    context->fail_view.closure = closure;
    context->fail_view.call = call;
    result->user_data = context;
    result->fail_view = mb_sg_trace_hooks_fail_view_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_push_debug_group(sg_trace_hooks *self,
                                      mb_sg_trace_hooks_push_debug_group_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_PUSH_DEBUG_GROUP);
    context->push_debug_group.closure = closure;
    context->push_debug_group.call = call;
    result->user_data = context;
    result->push_debug_group = mb_sg_trace_hooks_push_debug_group_trampoline;
    return result;
}

MOONBIT_FFI_EXPORT sg_trace_hooks *
mb_sg_trace_hooks_on_pop_debug_group(sg_trace_hooks *self,
                                     mb_sg_trace_hooks_pop_debug_group_call call, void *closure) {
    mb_validate_sg_trace_hooks(self);
    sg_trace_hooks *result = mb_new_sg_trace_hooks();
    *result = *self;
    mb_sg_trace_hooks_callbacks *context =
        mb_copy_sg_trace_hooks_context(self, MB_SG_TRACE_HOOKS_POP_DEBUG_GROUP);
    context->pop_debug_group.closure = closure;
    context->pop_debug_group.call = call;
    result->user_data = context;
    result->pop_debug_group = mb_sg_trace_hooks_pop_debug_group_trampoline;
    return result;
}
