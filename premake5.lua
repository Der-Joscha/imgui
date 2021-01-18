project "ImGui"
	kind "StaticLib"
	language "C++"
  
	targetdir ("%{wks.location}/Build/Binary/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/Build/Object/" .. outputdir .. "/%{prj.name}")
  
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
		staticruntime "Off"
	
	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "Off"
	
	filter "configurations:Debug"
		optimize "Off"
		symbols "On"
		runtime "Debug"

	filter "configurations:Release"
		optimize "On"
		symbols "Off"
		runtime "Release"
	
