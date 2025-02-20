from time import sleep

def my_func(x):
    return x + "WORLD!"

def known_names(n):
    return "Hello " + n

words = ["HELLO ", "WELCOME ", "SEE YOU LATER "]
greetings = list(map(my_func, words))
print(greetings)

sleep(5)

names = ["Jules", "Skyler", "Sodiepop", "GabeN"]
greet_names = list(map(known_names, names))
print(greet_names)