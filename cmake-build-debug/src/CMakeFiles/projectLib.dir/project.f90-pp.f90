# 1 "/home/frostydev/workspace/HPRC/Fortran-Navigation-System/src/project.f90"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/frostydev/workspace/HPRC/Fortran-Navigation-System/cmake-build-debug//"
# 1 "/home/frostydev/workspace/HPRC/Fortran-Navigation-System/src/project.f90"
! SPDX-Identifier: MIT

!> Project Initializer

module project
    use stdlib_logger
    use plplot

    implicit none

    public

    contains

        subroutine startProject

            print *, "[HPRC] Starting control system..."

        end subroutine startProject
end module project
