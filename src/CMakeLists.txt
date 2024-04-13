set(projectModules
        project.f90
        constants.f90
        CACHE INTERNAL ""
)

# PKG Config
find_package(PkgConfig)
find_package(fortran_stdlib REQUIRED)
pkg_check_modules(STDLIB REQUIRED fortran_stdlib)
pkg_check_modules(PLPLOT REQUIRED plplot-fortran)

add_library(projectLib "${projectModules}")
add_executable(controlSystem main.f90)

# Include directories for the fortran_stdlib package
target_include_directories(projectLib PRIVATE ${STDLIB_INCLUDE_DIRS} ${PLPLOT_INCLUDE_DIRS})
target_include_directories(controlSystem PRIVATE ${STDLIB_INCLUDE_DIRS} ${PLPLOT_INCLUDE_DIRS})
target_link_libraries(controlSystem PRIVATE
        projectLib
        fortran_stdlib::fortran_stdlib
        ${PLPLOT_LIBRARIES}
)
