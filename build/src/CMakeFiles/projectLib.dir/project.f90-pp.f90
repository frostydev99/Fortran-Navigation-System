# 1 "/Users/frostydev/CLionProjects/FortranControlSystem/src/project.f90"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/Users/frostydev/CLionProjects/FortranControlSystem/build//"
# 1 "/Users/frostydev/CLionProjects/FortranControlSystem/src/project.f90"
! SPDX-Identifier: MIT

!> Project Initializer

module project
    use stdlib_logger

    implicit none

    public

    contains

        subroutine startProject

            print *, "[HPRC] Starting control system..."

        end subroutine startProject
end module project
