local PROJECT_NAME = "wolv"
local PROJECT_VERSION = "0.1.0"

set_project(PROJECT_NAME)
set_version(PROJECT_VERSION)

target(PROJECT_NAME)
    set_kind("static")
    set_languages("cxx23", "clatest")
    on_config(function (target)
        if is_plat("windows") and target:has_tool("cxx", "cl") then
            raise("MSVC is not supported. Please use clang or gcc.")
        end
    end)
    
includes("libs/types/xmake.lua")
includes("libs/utils/xmake.lua")
includes("libs/io/xmake.lua")
includes("libs/hash/xmake.lua")
includes("libs/net/xmake.lua")
includes("libs/containers/xmake.lua")
includes("libs/math_eval/xmake.lua")
includes("libs/testing/xmake.lua")