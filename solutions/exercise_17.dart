import 'dart:io';

void main() {
  stdout.write("What square size do you want: ");
  int userChoice = int.parse(stdin.readLineSync());
  print("Here is a $userChoice by $userChoice board: \n");

  drawBoard(userChoice);
}

void drawBoard(int squareSize) {
  // Basic building blocks
  String rowLines = " ---";
  String colLines = "|   ";

  // For loop for drawing the board
  for (var i = 0; i < squareSize; i++) {
    print(rowLines * squareSize);
    print(colLines * (squareSize + 1));
  }

  // Add the last line to the board
  print("${rowLines * squareSize}\n");
}
