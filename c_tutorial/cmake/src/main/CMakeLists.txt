add_library(swap STATIC swap.c)

add_executable(CCode preprocessor_macro.c)
add_compile_definitions(ARRAY_SIZE=10)

target_include_directories(CCode PUBLIC
	$<BUILD_INTERFACE:${SharedLibIncludeDir}>
	$<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>)

message(STATUS ${SharedLibIncludeDir})
message(STATUS ${CMAKE_INSTALL_INCLUDEDIR})

set_target_properties(CCode PROPERTIES
	INSTALL_RPATH "/${CMAKE_INSTALL_LIBDIR}"
	)

message(STATUS "Runtime path : ${CMAKE_INSTALL_LIBDIR}")

message(STATUS ${swap})
message(STATUS ${customstring})

message(STATUS "Reaching?")
target_link_libraries(CCode PRIVATE swap customstring)

install (TARGETS CCode 
	RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
	)
