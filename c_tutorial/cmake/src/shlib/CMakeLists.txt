add_library(customstring SHARED
	customstring.c
)

set(SharedLibIncludeDir ${CMAKE_CURRENT_SOURCE_DIR})

message("Working? : ${SharedLibIncludeDir}")

target_include_directories(customstring PRIVATE .)

set_target_properties(customstring PROPERTIES
	VERSION ${PROJECT_VERSION}
	SOVERSION ${PROJECT_VERSION_MAJOR}
	PUBLIC_HEADER customstring.h)

install(TARGETS customstring
	LIBRARY DESTINATION "/${CMAKE_INSTALL_LIBDIR}"
	PUBLIC_HEADER DESTINATION "/${CMAKE_INSTALL_INCLUDEDIR}"
	)
message(STATUS "Library Path : ${CMAKE_INSTALL_LIBDIR}")

add_subdirectory("${PROJECT_SOURCE_DIR}/src/main"
	"${PROJECT_SOURCE_DIR}/build/src/main") # Need to specify source directory if subdirectory
# is not under this directory tree
