-- A solution contains projects, and defines the available configurations
solution "Simple_Script"
	configurations { "Debug", "Release" }
	location "build"
	kind "ConsoleApp"
	language "C"

	-- A project defines one build target
	project "simple_script"
		files
		{
			"main.c",
			"lex.yy.c",
			--"tokens.c",
			"y.tab.c"
		}
		--excludes { }
		--      libdirs { }
		--links { } 
		targetdir "build"

		configuration "Debug"
			defines { "DEBUG" }
			flags { "Symbols" }

		configuration "Release"
			defines { "NDEBUG" }
			flags { "Optimize" }

		configuration { "linux", "gmake" }
			buildoptions { "-std=gnu99", "-pedantic-errors", "-fno-strict-aliasing", "-Wunused-variable", "-Wreturn-type" }

