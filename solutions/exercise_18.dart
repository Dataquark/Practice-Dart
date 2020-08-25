void main() {
  List<List<int>> finalBoard = [
    [1, 0, 0],
    [0, 1, 0],
    [2, 1, 0]
  ];

  theGame(finalBoard);
}

void theGame(List<List<int>> board) {
  /*
  Accepts: list of list of integers
  Does: first checks the rows, then columns then diagonals
        and prints the results if conditions are met
  Returns: nothing
  */
  if (rowCheck(board)) {
    print("Row wins");
  } else if (rowCheck(transpose(board))) {
    print("Column wins");
  } else if (rowCheck(diagonals(board))) {
    print("Diagonal wins");
  } else {
    print("Draw!");
  }
}

bool rowCheck(List<List<int>> board) {
  /* 
  Accepts: list of lists of integers
  Does: checks if any row consists of the same values
  Returns: true if any, false otherwise 
  */
  for (List<int> row in board) {
    if (row.toSet().length == 1) {
      return true;
    }
  }
  return false;
}

List<List<int>> transpose(List<List<int>> board) {
  /* 
  Accepts: list of lists of integers
  Does: transposes it so each row becomes a column
  Returns: the transposed list of lists
  */
  return [
    for (var i = 0; i < board.length; i++) [for (List<int> r in board) r[i]]
  ];
}

List<List<int>> diagonals(List<List<int>> board) {
  /* 
  Accepts: list of list of integers
  Does: takes both diagonals and adds them to a new list
  Returns: new list of lists
  
  Left-to-right diagonal is fairly easy.
  To take the right-to-left diagonal, first we reverse the each row
  then take left-to-right diagonal one more time
  */
  return [
    [for (var i = 0; i < board.length; i++) board[i][i]],
    [for (var i = 0; i < board.length; i++) board[i].reversed.toList()[i]]
  ];
}
