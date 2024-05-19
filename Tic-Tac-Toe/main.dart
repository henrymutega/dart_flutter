import 'dart:io';

void main() {
  // Initialize the game board
  List<List<String>> board = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
  ];

  // Define players
  String currentPlayer = 'X';
  bool gameWon = false;

  // Function to print the game board
  void printBoard() {
    for (int i = 0; i < 3; i++) {
      print('${board[i][0]} | ${board[i][1]} | ${board[i][2]}');
      if (i < 2) {
        print('--+---+--');
      }
    }
  }

  // Function to check for a win
  bool checkWin() {
    for (int i = 0; i < 3; i++) {
      if (board[i][0] == currentPlayer &&
          board[i][1] == currentPlayer &&
          board[i][2] == currentPlayer) {
        return true;
      }
      if (board[0][i] == currentPlayer &&
          board[1][i] == currentPlayer &&
          board[2][i] == currentPlayer) {
        return true;
      }
    }
    // Check diagonals
    if (board[0][0] == currentPlayer &&
        board[1][1] == currentPlayer &&
        board[2][2] == currentPlayer) {
      return true;
    }
    if (board[0][2] == currentPlayer &&
        board[1][1] == currentPlayer &&
        board[2][0] == currentPlayer) {
      return true;
    }
    return false;
  }

  // Function to check for a draw
  bool checkDraw() {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j] == ' ') {
          return false;
        }
      }
    }
    return true;
  }

  // Main game loop
  while (!gameWon && !checkDraw()) {
    printBoard();
    print("Player $currentPlayer's turn. Enter row and column (e.g., 1 2):");
    String? input = stdin.readLineSync();
    if (input == null) {
      continue;
    }
    List<String> parts = input.split(' ');
    if (parts.length != 2) {
      print('Invalid input. Please enter row and column separated by a space.');
      continue;
    }
    int row = int.parse(parts[0]);
    int col = int.parse(parts[1]);
    if (row < 1 ||
        row > 3 ||
        col < 1 ||
        col > 3 ||
        board[row - 1][col - 1] != ' ') {
      print('Invalid move. Try again.');
      continue;
    }
    board[row - 1][col - 1] = currentPlayer;

    if (checkWin()) {
      printBoard();
      print('Player $currentPlayer wins!');
      gameWon = true;
    } else if (checkDraw()) {
      printBoard();
      print('The game is a draw!');
    } else {
      currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
    }
  }
}
