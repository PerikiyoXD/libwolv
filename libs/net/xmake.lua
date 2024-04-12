target("libwolv-net")
    set_kind("static")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")

    add_files("source/net/socket_client.cpp",
              "source/net/socket_server.cpp",
              "source/net/common.cpp")

    add_deps("libwolv-utils")

    if is_plat("windows") or is_plat("mingw") then
        add_links("ws2_32", {public = true})
    end