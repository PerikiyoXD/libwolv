target("libwolv-io")
    set_kind("static")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")

    if is_plat("linux") then
        add_files("source/io/file_unix.cpp")
    end
    if is_plat("windows") or is_plat("mingw") then
        add_files("source/io/file_win.cpp")
    end
    if is_plat("macosx") then
        --- TODO: Should add hardcoded SDK? YES? NO?
        add_files("source/io/fs_macos.m")
    end
    add_files("source/io/file.cpp", "source/io/fs.cpp")

    add_deps("libwolv-utils")