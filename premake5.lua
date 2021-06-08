project "ImGui"
		kind "StaticLib"
		language "C++"
		cppdialect "C++17"
		staticruntime "on"


		targetdir ("bin/" .. outputdir .. "/%{prj.name}")
		objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

		files
		{
			"imconfig.h",
			"imgui.cpp",
			"imgui.h",
			"imgui_draw.cpp",
			"imgui_demo.cpp",
			"imgui_internal.h",
			"imstb_rectpack.h",
			"imstb_textedit.h",
            "imgui_tables.cpp",
			"imstb_truetype.h",
			"imgui_widgets.cpp"
		}

		filter "system:windows"
			systemversion "latest"

		filter "configurations:Debug"
				runtime "Debug"
				symbols "on"

		filter "configurations:Release"
				runtime "Release"
				optimize "on"
