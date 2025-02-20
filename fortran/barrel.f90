program barrel
    implicit none

    real :: pi
    real :: radius
    real :: height
    real :: area
    real :: volume

    pi = 3.1415927

    print *, 'Enter barrel base radius:'
    read (*,*) radius

    print *, 'Enter barrel height:'
    read (*,*) height

    area = pi * radius**2
    volume = area * height

    print *, 'Barrel radius is: ', radius
    print *, 'Barrel height is: ', height
    print *, 'Barrel area is: ', area
    print *, 'Barrel volume is: ', volume
    
end program barrel