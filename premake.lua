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
systemversion "latest"


filter "configurations:Debug"
runtime "Debug"
symbols "On"

filter "configurations:Release"
runtime "Release"
optimize "On"