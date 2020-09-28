project "ImGui"
	kind "StaticLib"
	language "C++"
  
  	targetdir ("Binary/" .. outputdir .. "/%{prj.name}")
	objdir ("Object/" .. outputdir .. "/%{prj.name}")
  
	files
	{
		"imconfig.h",
		"imgui.h",
		"Imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imgui_rectpack.h",
		"imgui_textedit.h",
		"imgui_truetype.h",
		"imgui_demo.cpp"
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
	
	filter "configurations:Release"
		runtime "Release"
		optimize "On"
	
