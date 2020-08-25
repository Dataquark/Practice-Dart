import 'dart:io';
import 'dart:math';

void main() {
  String word = randomWord("sowpods.txt");
  print(word);
}

String randomWord(String txt) {
  /*
  Reads the given file as a list
  Then picks a random word from it
  */
  final random = Random();
  var file = File(txt);
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}
