import 'dart:io';

void main() {
  stdout.write("What's your name? ");
  String? name = stdin.readLineSync();

  print("Hi, $name! What is your age?");
  int? age = int.parse(stdin.readLineSync()!);

  int yearsToHundred = 100 - age;
  print("$name, You have $yearsToHundred years to be 100");
}
