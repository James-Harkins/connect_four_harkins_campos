# Connect Four

Welcome to the README for the Connect Four project.

## Project Description

 - Created a simulator for in the terminal for the Connect Four game.

 - User can play against a computer or against another player.

 - The game board is a 7-column, 6-row grid. To play, the user selects a column (A-G), and the piece is placed at the lowest available space in that column.

 - To win the game, the user must successfully place four pieces consecutively either horizontally, vertically, or diagonally.

 - A draw occurs when there are no more spaces left, and neither player nor computer has won.

### Goals

- Breaking down a complex game into small working solutions

- Using Test Driven Development to generate a working simulator

- Implementing Enumerables to create DRY, dynamic code

- Developing a readable, easy to follow, command line interface.

### Directory

___Class Files___

- `board.rb`             : Class containing methods used to print the state of the game to the terminal as the game progresses

- `player.rb`           : Class containing methods used by the user to progress through the game and to determine if end game conditions are satisfied

- `computer.rb`        : Class containing methods used by the computer to progress through the game and to determine if end game conditions are satisfied

- `game.rb`              : Class containing methods to start the game as well as to run the game, which can progress according to player and computer inputs

___Spec Files___

- `board_spec.rb`           : manages the tests for our board class

- `player_spec.rb`          : manages the tests for our player class

- `computer_spec.rb`        : manages the tests for our computer class

- `game_spec.rb`            : manages the tests for our game class

___Additional Files___

- `connect_four.rb`      : runs the simulator in the terminal, known as a runner file

- `README.md`            : what you are currently reading, explains the project

___Contributors___

James Harkins || github: James-Harkins

Adrian Campos || github: adriancampos29
