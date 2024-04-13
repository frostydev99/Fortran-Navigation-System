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