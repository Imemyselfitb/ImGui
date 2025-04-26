project "ImGui"
	location "ImGui"
	language "C++"
	kind "StaticLib"

	targetdir "lib/x64/%{cfg.buildcfg}/"
	objdir "bin-int/"

	files
	{
		"src/*.h", 
		"src/*.cpp", 
		
		"src/backends/imgui_impl_sdl3.h", 
		"src/backends/imgui_impl_sdl3.cpp", 
		"src/backends/imgui_impl_opengl3.h", 
		"src/backends/imgui_impl_opengl3.cpp"
	}

	includedirs
	{
		"src", 
		"src/backends", 

		"../SDL3/include"
	}

	links
	{
		"SDL3"
	}

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"
