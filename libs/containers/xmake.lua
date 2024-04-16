target("wolv")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")
    