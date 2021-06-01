project "ImGui"
		kind "StaticLib"
		language "C++"


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
				cppdialect "C++17"
				staticruntime "on"

		filter "configurations:Debug"
				runtime "Debug"
				symbols "on"

		filter "configurations:Release"
				runtime "Release"
				optimize "on"
				buildoptions "/MT"
