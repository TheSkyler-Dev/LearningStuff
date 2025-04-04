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

    area = 2 * pi * radius * (radius + height)
    volume = pi * radius**2 * height
    liters = volume / 1000.0
    floz = liters * 0.264172
    gallons = floz / 128.0

    print *, 'Barrel radius is: ', radius, 'cm'
    print *, 'Barrel height is: ', height, 'cm'
    print *, 'Barrel area is: ', area, 'cm^2'
    print *, 'Barrel volume is: ', volume, 'cm^3'
    print *, 'Barrel volume in Liters is: ', liters, 'L'
    print *, 'Barrel volume in fluid ounces is: ', floz, 'fl. oz.'
    print *, 'Barrel volume in gallons is: ', gallons, 'gal'
    print *, 'Done.'
end program barrel