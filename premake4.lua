solution "squirrel3"
configurations { "debug", "release" }

local bin_folder = "bin"
local lib_folder = "lib"

function translate_platform( platform )
	if platform == "x32" then
		return "x86"
	elseif platform == "Native" then
		return "native"
	end
	
	return platform
end

project "sqstdlib"
	language("C++")
	objdir "obj"
	uuid( "CCD84535-0BFB-DC4B-AF82-4AADC85D978F" )	
	kind "StaticLib"
	
	platforms { "x32", "x64", "native" }
	
	files
	{
		"sqstdlib/**.cpp"
	}
	
	includedirs
	{
		"include"
	}
			
	for _, platform in ipairs(platforms()) do
		configuration {"debug", platform }
			targetdir (lib_folder .. "/" .. translate_platform( platform ) .. "/debug" )	
			defines { "DEBUG" }
			flags { "Symbols" }

		configuration {"release", platform }
			targetdir (lib_folder .. "/" .. translate_platform( platform ) .. "/release" )
			flags { "Symbols", "Optimize" }	
	end

project "squirrel"
	language("C++")
	objdir "obj"
	uuid( "CCD84535-0BFB-DC4A-AF82-4AADA85D998E" )	
	kind "StaticLib"
	
	platforms { "x32", "x64", "native" }
	
	files
	{
		"squirrel/**.cpp"
	}
	
	includedirs
	{
		"include"
	}
			
	for _, platform in ipairs(platforms()) do
		configuration {"debug", platform }
			targetdir (lib_folder .. "/" .. translate_platform( platform ) .. "/debug" )	
			defines { "DEBUG" }
			flags { "Symbols" }

		configuration {"release", platform }
			targetdir (lib_folder .. "/" .. translate_platform( platform ) .. "/release" )		
			flags { "Symbols", "Optimize" }	
	end	
	

project "sq"
	language("C++")
	objdir "obj"
	uuid( "CCD83534-0BFB-DC4A-AF82-4CCDA85D998E" )	
	kind "ConsoleApp"
	
	
	platforms { "x32", "x64", "native" }
	
	files
	{
		"sq/**.cpp"
	}
	

	
	includedirs
	{
		"include"
	}

	-- setup the following structure for output files
	-- <base>/<platform>/<config>
	for _, platform in ipairs(platforms()) do
		configuration {"debug", platform }
			targetdir (bin_folder .. "/" .. translate_platform( platform ) .. "/debug" )	
			defines { "DEBUG" }
			flags { "Symbols" }
			libdirs
			{
				(lib_folder .. "/" .. translate_platform( platform ) .. "/debug")
			}
			links
			{
				"sqstdlib",
				"squirrel"
			}			

		configuration {"release", platform }
			targetdir (bin_folder .. "/" .. translate_platform( platform ) .. "/release" )
			flags { "Symbols", "Optimize" }	
			libdirs
			{
				(lib_folder .. "/" .. translate_platform( platform ) .. "/release")
			}
			links
			{
				"sqstdlib",
				"squirrel"
			}			
	end