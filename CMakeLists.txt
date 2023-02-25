cmake_minimum_required(VERSION 3.19)
project(gm82alpha C)

set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

if(${CMAKE_C_COMPILER_ID} STREQUAL "MSVC")
    set(CMAKE_C_FLAGS "/O2 /GS- /W2 /WX")
endif()

add_library(gm82alpha SHARED gm82alpha.c)

option(INSTALL_GEX "Install the generated .gex" OFF)

if (INSTALL_GEX)
	add_custom_command(
		TARGET gm82alpha
		POST_BUILD
		COMMAND py build_gex.py gm82alpha.gej
		WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
		COMMENT "Building .gex"
	)
else()
	add_custom_command(
		TARGET gm82alpha
		POST_BUILD
		COMMAND py build_gex.py gm82alpha.gej --noinstall
		WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
		COMMENT "Building .gex"
	)
endif()