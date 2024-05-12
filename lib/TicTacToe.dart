import 'dart:io';

void main() {
  final List<String> board = List.filled(9, ' ');
  bool isPlayer1Turn = true; 
  int moves = 0; 
  
  print('Welcome to Tic-Tac-Toe!\n');
  printBoard(board); 
  
  while (true) {
    print('\n${isPlayer1Turn ? "Player 1" : "Player 2"}, enter your move (1-9): '); 
    String? input = stdin.readLineSync(); 
    
    if (input == null) {
      print('Invalid input. Please try again.');
      continue;
    }
    
    try {
      int move = int.parse(input); 
      
      if (move < 1 || move > 9 || board[move - 1] != ' ') { 
        print('Invalid move. Try again.');
        continue;
      }
      
      board[move - 1] = isPlayer1Turn ? 'X' : 'O'; 
      moves++;
      printBoard(board);
      
      if (checkWin(board)) { 
        print('${isPlayer1Turn ? "Player 1" : "Player 2"} wins!');
        break;
      } else if (moves == 9) {
        print("It's a draw!");
        break;
      }
      
      isPlayer1Turn = !isPlayer1Turn; 
    } catch (e) {
      print('Invalid input. Please enter a number (1-9).');
    }
  }
}

void printBoard(List<String> board) {
  // Function to print the current state of the board
  print('');
  for (int i = 0; i < 9; i += 3) {
    print(' ${board[i]} | ${board[i + 1]} | ${board[i + 2]} '); // Print the rows of the board
    if (i < 6) print('-----------'); // Print horizontal lines except for the last row
  }
  print('');
}

bool checkWin(List<String> board) {
  // Function to check if there is a winner
  // Check rows
  for (int i = 0; i < 9; i += 3) {
    if (board[i] != ' ' && board[i] == board[i + 1] && board[i] == board[i + 2]) {
      return true;
    }
  }

  // Check columns
  for (int i = 0; i < 3; i++) {
    if (board[i] != ' ' && board[i] == board[i + 3] && board[i] == board[i + 6]) {
      return true;
    }
  }

  // Check diagonals
  if (board[0] != ' ' && board[0] == board[4] && board[0] == board[8]) {
    return true;
  }
  if (board[2] != ' ' && board[2] == board[4] && board[2] == board[6]) {
    return true;
  }

  return false;
}
