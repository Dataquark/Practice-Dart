import 'dart:io';
import 'dart:math';

void main() {
  /* Generate random number
  Range is between 1000 and 9999 */
  final random = Random();
  String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
  print(randomNumber);

  stdout.write("Welcome to Cows and Bulls\nType 'exit' to stop the game\n");

  int attempts = 0;

  // Actual game
  while (true) {
    int cows = 0;
    int bulls = 0;
    attempts += 1;

    stdout.write("\nPlease choose a four digit number: ");
    String chosenNumber = stdin.readLineSync();

    // Conditions to check if the game is over
    if (chosenNumber == randomNumber) {
      print("Bullseye! You took $attempts attempts");
      break;
    } else if (chosenNumber == "exit") {
      print("Bye bye!");
      break;
    } else if (chosenNumber.length != randomNumber.length) {
      print("Incorrect number. Make sure to give 4 digit number");
      continue;
    }

    /* If a digit is in the same index increase the cow
    If it is somewhere else increase the bull*/
    for (var i = 0; i < randomNumber.length; i++) {
      if (chosenNumber[i] == randomNumber[i]) {
        cows += 1;
      } else if (randomNumber.contains(chosenNumber[i])) {
        bulls += 1;
      }
    }
    print("\nAttempts: $attempts \nCows: $cows, Bulls: $bulls");
  }
}
