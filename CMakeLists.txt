cmake_minimum_required(VERSION 3.1)

project(FortranControlSystem
        VERSION 0.1
        DESCRIPTION "WPI HPRC Control System in Fortran"
        LANGUAGES Fortran
)
enable_language(Fortran)

set(CMAKE_Fortran_COMPILER "gfortran")

# Configure Fortran
get_filename_component(Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)
if(Fortran_COMPILER_NAME MATCHES "gfortran.*")
    set(CMAKE_Fortran_FLAGS "")
elseif (Fortran_COMPILER_NAME MATCHES "ifort.*")
    set(CMAKE_Fortran_FLAGS "")
endif()

set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${FVERSION}")

add_subdirectory(src)

include(GNUInstallDirs)

install(TARGETS controlSystem DESTINATION "bin")