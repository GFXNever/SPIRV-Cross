project "SPIRV-Cross"
    kind "StaticLib"
    language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin/" .. output_dir .. "/%{prj.name}")
	objdir ("bin-int/" .. output_dir .. "/%{prj.name}")

    files
    {
        "spirv-cross/spirv.h",
        "spirv-cross/spirv.hpp",
        "spirv-cross/spirv_cfg.cpp",
        "spirv-cross/spirv_cfg.hpp",
        "spirv-cross/spirv_common.hpp",
        "spirv-cross/spirv_cpp.cpp",
        "spirv-cross/spirv_cpp.hpp",
        "spirv-cross/spirv_cross.cpp",
        "spirv-cross/spirv_cross.hpp",
        "spirv-cross/spirv_cross_c.cpp",
        "spirv-cross/spirv_cross_c.h",
        "spirv-cross/spirv_cross_containers.hpp",
        "spirv-cross/spirv_cross_error_handling.hpp",
        "spirv-cross/spirv_cross_parsed_ir.cpp",
        "spirv-cross/spirv_cross_parsed_ir.hpp",
        "spirv-cross/spirv_cross_util.cpp",
        "spirv-cross/spirv_cross_util.hpp",
        "spirv-cross/spirv_glsl.cpp",
        "spirv-cross/spirv_glsl.hpp",
        "spirv-cross/spirv_hlsl.cpp",
        "spirv-cross/spirv_hlsl.hpp",
        "spirv-cross/spirv_msl.cpp",
        "spirv-cross/spirv_msl.hpp",
        "spirv-cross/spirv_parser.cpp",
        "spirv-cross/spirv_parser.hpp",
        "spirv-cross/spirv_reflect.cpp",
        "spirv-cross/spirv_reflect.hpp"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"