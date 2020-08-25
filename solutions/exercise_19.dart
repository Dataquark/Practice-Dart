import 'dart:io';

void main() {
  // Empty board
  List<List<String>> initialBoard =
      List.generate(3, (_) => List.generate(3, (_) => ' '));
  drawBoard(initialBoard, 2);
}

void drawBoard(List<List<String>> board, int currentUser) {
  /*
  Takes an initial board and populates it 
  either with X or with O depending on
  the currentUser and their choice
  */
  var move;
  currentUser == 1 ? move = 'X' : move = 'O';

  stdout.write("Please choose a coordinate: ");
  List choice = stdin.readLineSync().split(" ");
  board[int.parse(choice[0])][int.parse(choice[1])] = move;
  print(board);
}
