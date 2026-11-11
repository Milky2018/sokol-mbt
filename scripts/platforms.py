"""Windows versus non-Windows availability of native entry points.

Use only the compiler-supported Windows platform condition. This does not
select a graphics backend or distinguish macOS from Linux.
"""

WINDOWS_APP_FUNCTIONS = {
    "sapp_win32_get_hwnd",
    "sapp_d3d11_get_swap_chain",
}
NON_WINDOWS_APP_FUNCTIONS = {
    "sapp_macos_get_window",
    "sapp_ios_get_window",
    "sapp_x11_get_window",
    "sapp_x11_get_display",
    "sapp_android_get_native_activity",
    "sapp_android_get_native_window",
    "sapp_egl_get_display",
    "sapp_egl_get_context",
    "sapp_html5_ask_leave_site",
    "sapp_html5_get_dropped_file_size",
    "sapp_html5_fetch_dropped_file",
    "sapp_show_keyboard",
    "sapp_keyboard_shown",
}


def platform_condition(module, name):
    if (module == "app" and name in WINDOWS_APP_FUNCTIONS) or (
        module == "gfx" and name.startswith("sg_d3d11_")
    ):
        return 'platform="windows"'
    if (module == "app" and name in NON_WINDOWS_APP_FUNCTIONS) or (
        module == "gfx" and name.startswith("sg_mtl_")
    ):
        return 'not(platform="windows")'
    return None
