target("wolv")
    add_sysincludedirs("include", {public = true})
    add_headerfiles("include/(**.hpp)")

    add_files("source/math_eval/math_evaluator.cpp")

    