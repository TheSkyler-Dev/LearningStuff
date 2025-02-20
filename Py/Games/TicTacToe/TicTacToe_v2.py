#Libs
import random
#definitions
#Field
def print_TicTactoe(values):
        print("\n")
        print("\t     |     |")
        print("\t  {}  |  {}  |  {}  ".format(values[0], values[1], values[2]))
        print('\t_____|_____|_____')

        print("\t     |     |     ")
        print("\t  {}  |  {}  |  {}".format(values[3], values[4], values[5]))
        print('\t_____|_____|_____')

        print("\t     |     |     ")
        print("\t  {}  |  {}  |  {}".format(values[6], values[7], values[8]))
        print("\t     |     |")
        print("\n")

        
#scoreboard.design
def print_scoreboard(score_board):
        print("--------------------------------")
        print("            SCOREBOARD       ")
        print("--------------------------------")

        players = list(score_board.keys())
        print("   ", players[0], "    ", score_board[players[0]])
        print("   ", players[1], "    ", score_board[players[1]])
 
        print("--------------------------------\n")

#chk.win
def check_win(player_pos, cur_player):

        #possible.win
        soln = [[1, 2, 3], [2, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

        #chk.WinComb = satisfied
        for x in soln:
                if all(y in player_pos[cur_player] for y in x):
                    #affirm if WinComb = satisfied
                    return True
                else:
                    #reject if WinComb != satisfied
                    return False
                        
                    print_TicTacToe(values)
                    print("Player ", cur_player, " has won!!")
                    print("\n")
                    return cur_player
                        
#is draw?
def check_draw(player_pos):
        if len(player_pos['X']) + len(player_pos['O']) == 9:
            return True
        else:
            return False
                    
#single.game
def game_single(cur_player):
                
        #repres_TicTacToe
        values = [' ' for x in range(9)]
                
        #store_pos
        player_pos = {'X':[], 'O':[]}

        #single.gameloop
        while True:
            print_TicTactoe(values)

            #moves
            try:
                print("Player ", cur_player, "turn. Which box? : ", end="")
                move = int(input())
            except ValueError:
                print("Invalid Input!!! Try Again")
                continue

            #sanity.chk (inout)
            if move < 1 or move > 9:
                print("Invalid Input!!! Try Again")
                continue

            #chk.FULL
            if values[move-1] != ' ':
                print("Cell already full. Try again!")
                continue
                    
            #update.info

            #update.gridstatus
            values[move-1] = cur_player

            #Player.Updatepos
            player_pos[cur_player].append(move)

            #call.chkwin
            if check_win(player_pos, cur_player):
                print_TicTactoe(values)
                print("Player ", cur_player, " has won the game!!")     
                print("\n")
                return cur_player

            #chk.draw
            if check_draw(player_pos):
                print_TicTactoe(values)
                print("Draw!")
                print("\n")
                return 'D'

            #switch Player.moves
            if cur_player == 'X':
                cur_player = 'O'
            else:
                cur_player = 'X'
#Title
print("Hello, wanna play...")
print('''
                                                                                                                                                                                                        
                                                                                                                                                                                                       
                                                                                                                                                                                                       
                                                                                                                                                                                                       
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                               @@@@@@@@@@@@@@ @@@                                                                                                       
                                                                                    @@@                                                                                                                 
                                                                                    @@@       @@@      @@@@@@@                                                                                          
                                                                                    @@@       @@@    @@@@   @@                                                                                          
                                                                                    @@@       @@@   @@@                                                                                                 
                                                                                    @@@       @@@   @@@                                                                                                 
                                                                                    @@@       @@@    @@@@@@@@@                                                                                          
                                                                                    @@@       @@@       @@@@                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
                                                                                                                                                                                                        
                                                                                      @@@@@@@@@@@@@@                                                                                                    
                                                                                           @@@                                                                                                          
                                                                                           @@@      @@@@@@@@@&    @@@@@@@@@@                                                                            
                                                                                           @@@             @@@   (@@@                                                                                   
                                                                                           @@@      @@@@@@@@@@   @@@#                                                                                   
                                                                                           @@@     @@@     @@@    @@@                                                                                   
                                                                                           @@@      @@@@@@@@@@     @@@@@@@@@                                                                            
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                               @@@@@@@@@@@@@@                                                                                                           
                                                                                    @@@                                                                                                                 
                                                                                    @@@       @@@@@@@@      (@@@@@@                                                                                     
                                                                                    @@@      @@@   .@@@    @@@    @@@                                                                                   
                                                                                    @@@     @@@     @@@/  @@@@@@@@@@@@                                                                                  
                                                                                    @@@     @@@,    @@@/  *@@                                                                                           
                                                                                    @@@      @@@@@@@@@@    @@@@@@@@@@                                                                                   
                                                                                                 @@            @@/                                                                                      
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                       ''')
print("? (Y/N)")
In = input()
#IF/ELSE 1
if In == "Y" or In == "y":
        if __name__ == "__main__":

                #player.names
                print("Player 1")
                p1 = input("Enter your Name : ")
                print("\n")

                print("Player 2")
                p2 = input("Enter your Name : ")
                print("\n")

                #info.storage
                cur_player = p1
                #player.choice
                player_choice = {'X' : "", 'O' : ""}
                #options
                options = ['X', 'O']
                #scoreboard
                score_board = {p1: 0, p2: 0}
                print_scoreboard(score_board)

                #exit.loop
                while True:

                        #choice.menu
                        print("Turn to choose for", cur_player)
                        print("Strike 1 for X")
                        print("Strike 2 for O")
                        print("Strike 3 to Quit")

                        #tryEx
                        try:
                                choice = int(input())
                        except ValueError:
                                print("Invalid Input! Try Again\n")
                                continue

                        #conds.PlayerChoice
                        if choice == 1:
                                player_choice['X'] =cur_player
                                if cur_player == p1:
                                        player_choice['O'] = p2
                                else:
                                        player_choice['O'] = p1
                                
                        elif choice == 2:
                                player_choice['O'] = cur_player
                                if cur_player == p1:
                                        player_choice['X'] = p2
                                else:
                                        player_choice['X'] = p1

                        elif choice == 3:
                                    print("Final Scores")
                                    print_scoreboard(score_board)
                                    break

                        else:
                                print("Invalid Choice! Try Again\n")
                            
                        #store.winner
                        winner = game_single(options[choice-1])

                        #scoreboard.update
                        if winner != 'D' :
                                player_won = player_choice[winner]
                                score_board[player_won] = score_board[player_won] + 1

                        print_scoreboard(score_board)

                        #player_choose.switch
                        if cur_player == p1:
                                cur_player = p2
                        else:
                                cur_player = p1
else:
    print("bye ^^")
    print("strike ENTER to close the program")
