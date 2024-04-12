-- TODO: Understand this library and its purpose

target("libwolv-template")
    set_kind("headeronly")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")

    add_deps("libwolv-utils")