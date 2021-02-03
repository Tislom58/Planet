workspace "Planet"
  configurations {"Debug", "Release"}
  -- Use C++ as the target language for all builds
  language "C++"
  targetdir "bin/%{cfg.buildcfg}"

  -- Get that C++14 goodness
  flags { "C++14" }

  filter "configurations:Debug"
    -- Add the preprocessor definition DEBUG to debug builds
    defines { "DEBUG" }
    -- Ensure symbols are bundled with debug builds
    flags { "Symbols" }

  filter "configurations:Release"
    -- Add the preprocessor definition RELEASE to debug builds
    defines { "RELEASE" }
    -- Turn on compiler optimizations for release builds
    optimize "On"

  -- Planet Library
  project "Planet"
    kind "SharedLib"
    -- recursively glob .h and .cpp files in the lib directory
    files { "lib/**.h", "lib/**.cpp" }

  -- Planet Runtime
  project "PlanetRuntime"
    kind "ConsoleApp"
    -- recursively glob .h and .cpp files in the runtime directory
    files { "runtime/**.h", "runtime/**.cpp" }
    -- link the PLanetLib library at runtime
    links { "Planet" }
    includedirs { "lib", "lib/pub" }
