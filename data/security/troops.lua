--[[

lua_register(L, "c3_print", l_c3_display_print);
lua_register(L, "c3_cls", l_c3_display_cls);
lua_register(L, "c3_update", l_c3_display_update);
lua_register(L, "c3_draw_frame", l_c3_drawFrame);
lua_register(L, "c3_drawRFrame", l_c3_drawRFrame);
lua_register(L, "c3_draw_box", l_c3_drawBox);
lua_register(L, "c3_draw_line", l_c3_drawLine);
lua_register(L, "c3_draw_hline", l_c3_drawHLine);
lua_register(L, "c3_set_font", l_c3_setFont);
lua_register(L, "c3_drawBitmap", l_c3_drawBitmap);

lua_register(L, "print", l_c3_print);

lua_register(L, "c3_get_into_powersave", l_c3_get_into_powersave);
lua_register(L, "c3_get_into_performance", l_c3_get_into_performance);
lua_register(L, "c3_set_cpu_clock", l_c3_set_cpu_clock);

lua_register(L, "c3_get_heap_kb", l_c3_get_heap_kb);
lua_register(L, "c3_get_heap", l_c3_get_heap);
lua_register(L, "c3_sleep", l_c3_sleep);
lua_register(L, "c3_btn", l_c3_btn);

lua_register(L, "c3_file_exists", l_c3_file_exists);

lua_register(L, "c3_http_get", l_c3_http_get);
lua_register(L, "c3_get_weather", l_c3_get_weather);

]]--

---@diagnostic disable: undefined-global