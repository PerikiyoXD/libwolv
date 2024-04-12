target("libwolv-types")
    set_kind("headeronly")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")

    -- Add OS-specific defines
    if is_plat("linux") then
        add_defines("OS_LINUX", {public = true})
    end
    if is_plat("macosx") then
        add_defines("OS_MACOS", {public = true})
    end
    if is_plat("windows") or is_plat("mingw") then
        add_defines("OS_WINDOWS", {public = true})
    end
    if is_plat("wasm") then
        add_defines("OS_WEB", {public = true})
    end