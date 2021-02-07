-- https://github.com/premake/premake-core/wiki

local ROOT = "../"
---------------------------------
-- [ WORKSPACE CONFIGURATION   --
---------------------------------
workspace "Planet"
  configurations {"Debug", "Release"}

  -- _ACTION is the argument you passed into premake5 when you ran it.
    local project_action = "UNDEFINED"
    if _ACTION ~= nill then project_action = _ACTION end


    -- Where the project files (vs project, solution, etc) go
    location( ROOT .. "project_" .. project_action)

  -------------------------------
  -- [ COMPILER/LINKER CONFIG] --
  -------------------------------
  flags "FatalWarnings" -- comment if you don't want warnings to count as errors
  warnings "Extra"

  filter "configurations:Debug" defines { "DEBUG" } symbols "On"
  filter "configurations:Release" defines { "NDEBUG" } optimize "On"

  filter { "platforms:*32" } architecture "x86"
  filter { "platforms:*64" } architecture "x64"

  -- building makefiles
  filter { "action:gmake" }
    flags { "C++14" }

  -- building makefiles on mac specifically
  filter { "system:macosx", "action:gmake"}
      toolset "clang"

  filter {} -- clear filter

  -------------------------------
  -- [ PROJECT CONFIGURATION ] --
  -------------------------------
  project "Planet"
    kind "ConsoleApp"
    language "C++"
    -- where the output binary goes.
    targetdir (ROOT .. "bin_%{cfg.buildcfg}_%{cfg.platform}")
    targetname "Planet" -- the name of the executable saved to targetdir
    -- recursively glob .h and .cpp files in the lib directory
    files
   {
     "../lib/**.h", "../lib/**.hpp",
     "../lib/**.c", "../lib/**.cpp", "../lib/**.tpp",
   }

   -- Exclude template files from project (so they don't accidentally get compiled)
   filter { "files:**.tpp" }
     flags {"ExcludeFromBuild"}

   filter {} -- clear filter!

   -- where to find header files that you might be including, mainly for library headers.
   includedirs
   {
     "../" -- include root source directory to allow for absolute include paths
     -- include the headers of any libraries/dlls you need
   }
