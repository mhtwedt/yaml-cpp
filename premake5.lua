project "yaml-cpp"
  kind "StaticLib"
  language "C++"

  targetdir("bin/" .. outputdir .. "/%{prj.name}")
  objdir("bin-int/" .. outputdir .. "/%{prj.name}")


files
{
    "src/**.h",
    "src/**.cpp",

    "include/**.h"
}

includedirs
{
  "include"
}


filter "system:windows"
defines "YAML_CPP_STATIC_DEFINE"
systemversion "latest"
cppdialect "C++20"
staticruntime "On"

filter "system:linux"
pic "On"
systemversion "latest"
cppdialect "C++20"
staticruntime "On"

filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"