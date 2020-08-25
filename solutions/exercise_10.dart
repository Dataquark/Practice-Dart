import 'dart:io';

void main() {
  stdout.write("Please give us a number: ");
  int chosenNumber = int.parse(stdin.readLineSync());

  checkPrime(chosenNumber);
}

void checkPrime(int number) {
  // List comprehensions
  List<int> a = [
    for (var i = 1; i <= number; i++)
      if (number % i == 0) i
  ];

  // Check for prime
  a.length == 2
      ? print("The chosen number is a prime")
      : print("The chosen number is not a prime");
}
