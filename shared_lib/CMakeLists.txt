cmake_minimum_required(VERSION 3.0)

project(mylib VERSION 1.0.1 DESCRIPTION "mylib description")

include (GNUInstallDirs)

add_library(mylib SHARED 
	src/mylib.c
	src/buffers.c
	)

set_target_properties(mylib PROPERTIES
	VERSION ${PROJECT_VERSION}
	SOVERSION ${PROEJCT_VERSION_MAJOR}
	PUBLIC_HEADER api/mylib.h)

target_include_directories(myllib PRIVATE .)

install(TARGETS mylib 
	LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
	PUBLIC_HEADER DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

install (FILES ${CMAKE_BINARY_DIR}/mylib.pc
	DESTINATION ${CMAKE_INSTALL_DATAROOTDIR}/pkgconfig)
