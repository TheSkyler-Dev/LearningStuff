import Pkg
using Pkg
Pkg.add("Plots")
using Plots
gr()

println("Hewwo, fwen! OwO")
#this is my first Julia code!
sum = 56 + 69
typeof(sum) #Int64
println(sum) #125
days = 365
println("There are $days days in a year.")
daysFloat = days * 1.0
typeof(daysFloat) #Float64
println("There are $daysFloat days in a year.")
#I'm learning Julia! :3
dictionary = Dict("UwU" => "OwO", "OwO" => "UwU")
println(dictionary["UwU"]) #OwO
println(dictionary["OwO"]) #UwU
dictionary["Owo"] = "^w^"
println(dictionary["Owo"]) #^w^
println(dictionary) #Dict("UwU" => "OwO", "OwO" => "UwU", "Owo" => "^w^")
dictionary["AwA"] = "EwE"
pop!(dictionary, "AwA")

animals = ["cat", "dog", "bird", "fox", "wolf"]
println(animals[1]) #cat
println(animals[2]) #dog
println(animals[3]) #bird
println(animals[4]) #fox
println(animals[5]) #wolf
for animal in animals
    println(animal)
end

array = [1, 2, 3, 4, 5]
for i in array
    println(i)
end
array[1] = 10
println(array[1]) #10
push!(array, 6)
println(array[6]) #6
#pop!(array)
println(array[6]) #5

#arrays of arrays can exist -> 2D arrays OwO! (3D array too!)
modulo = pi % 2.2
println(modulo) #0.3424444444444444

numberlist = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for number in numberlist
    if number % 2 == 0
        println("$number is even.")
    else
        println("$number is odd.")
    end
end

for number in numberlist
    if number % 2 == 0
        println("$number is even.")
    elseif number % 3 == 0
        println("$number is divisible by 3.")
    else
        println("$number is odd.")
    end
end

x = 1
while x <= length(numberlist)
    println(numberlist[x])
    piMod = pi % numberlist[x]
    println(piMod)
    x += 1
end

m = 5
n = 5
j = 5
i = 5
c = [i + j for i in 1:m, j in 1:n]
println(c)

A = rand(3, 3)
A

x = -10:10
y = x.^2
plot(x, y)

p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)