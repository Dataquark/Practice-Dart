import 'dart:io';

void main() {
  stdout.write("Please give a sentence: ");
  String sentence = stdin.readLineSync();

  reverseSentence(sentence);
}

void reverseSentence(String sentence) {
  /* Split the sentence into a list of words
  Reverse the list, then join the words back */
  String a = sentence.split(" ").reversed.toList().join(" ");
  print(a);
}
