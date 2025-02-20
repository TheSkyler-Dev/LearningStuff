import random
from time import sleep
import os
from os import system
import platform

#valid moves class
class RockPaperScissors:
    valid_moves = ["Rock", "Paper", "Scissors"]

#Definining functions
#getting current platform
@staticmethod
def get_current_platform():
    thisOS = platform.system()
    if(thisOS == "Windows"):
        thisOS = "system('cls')"
    
    else:
        thisOS = "system('clear')"

    return thisOS

#getting the computer's choice
def get_computer_choice():
    p1 = random.choice(RockPaperScissors.valid_moves)
    return p1

#getting the player's choice
def get_player_choice():
    p2 = input("Your Move (Rock, Paper, Scissors):").capitalize().strip()

    #input validation
    if p2 in RockPaperScissors.valid_moves:
        return p2
    
    else:
       print("Oops!, the game encountered an error where you tried to select an invalid move :p")
       return get_player_choice()

#main loop
c = 1
while c == 1:
    #calling functions
    computer_choice = get_computer_choice()
    player_choice = get_player_choice()
    currentOS = get_current_platform()
    
    #checking all possible outcomes
    if computer_choice == "Rock" and player_choice == "Paper":
        print("Player wins!")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue
    
    elif computer_choice == "Paper" and player_choice == "Rock":
        print("Computer wins!")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue

    elif computer_choice == "Rock" and player_choice == "Scissors":
        print("Computer wins!")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue

    elif computer_choice == "Scissors" and player_choice == "Rock":
        print("Player wins!")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue

    elif computer_choice == "Paper" and player_choice == "Scissors":
        print("Player wins!")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue

    elif computer_choice == "Scissors" and player_choice == "Paper":
        print("Computer wins!")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue

    elif computer_choice == player_choice:
        print("That's a draw...")
        print("Computer chose", computer_choice)
        sleep(5)
        exec(currentOS)
        continue