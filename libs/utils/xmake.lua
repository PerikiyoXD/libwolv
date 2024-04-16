target("wolv") --utils")
    add_files("source/**.cpp")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")
    