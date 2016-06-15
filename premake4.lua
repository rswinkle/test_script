-- A solution contains projects, and defines the available configurations
solution "Test_Script"
	configurations { "Debug", "Release" }
	location "build"
	kind "ConsoleApp"
	language "C"
	targetdir "build"
	
	configuration "Debug"
		defines { "DEBUG" }
		flags { "Symbols" }

	configuration "Release"
		defines { "NDEBUG" }
		flags { "Optimize" }

	configuration { "linux", "gmake" }
		buildoptions { "-std=gnu99", "-pedantic-errors", "-fno-strict-aliasing", "-Wunused-variable", "-Wreturn-type" }

	project "test_script"
		files
		{
			"main.c",
			"lex.yy.c",
			"y.tab.c"
		}
		--excludes { }
		--      libdirs { }
		--links { } 

	project "test_script2"
		files
		{
			"main2.c",
			"lexer.c",
			"parser.c"
		}
		--excludes { }
		--      libdirs { }
		--links { } 




