workspace "InfinitShader"
    architecture "x64"
    startproject "InfinitShader" 

    configurations { "Debug", "Release"}
    
    project "InfinitShader"
        location "InfinitShader"
        kind "ConsoleApp"
        language "C++"
        staticruntime "off"

        files 
        {
            "%{prj.name}/src/**.h",	
            "%{prj.name}/src/**.cpp"	
        }

        
	includedirs
	{
        "%{prj.name}/src/"
    }

    filter "system:windows"
		cppdialect "C++17"
		systemversion "latest"