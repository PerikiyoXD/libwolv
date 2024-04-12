set_languages("c++23")

-- fail if using msvc and not using clang or gcc
if is_plat("windows") and not is_kind("clang", "gcc") then
    raise("Only clang and gcc are supported on Windows")
end

includes("libs/types/xmake.lua")
includes("libs/utils/xmake.lua")
includes("libs/io/xmake.lua")
includes("libs/hash/xmake.lua")
includes("libs/net/xmake.lua")
includes("libs/containers/xmake.lua")
includes("libs/math_eval/xmake.lua")
includes("libs/testing/xmake.lua")

target("libwolv")
    set_kind("static")
    add_deps("libwolv-types",
             "libwolv-utils",
             "libwolv-io",
             "libwolv-hash",
             "libwolv-net",
             "libwolv-containers",
             "libwolv-math_eval",
             "libwolv-testing")