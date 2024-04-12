target("libwolv-math_eval")
    set_kind("static")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")

    add_files("source/math_eval/math_evaluator.cpp")

    add_deps("libwolv-utils")