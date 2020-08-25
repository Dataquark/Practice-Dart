import 'dart:io';
import 'dart:convert';

void main() {
  birthdays("../birthdays.json");
}

void birthdays(String txt) {
  // Read the file and decode to Json
  var file = File(txt);
  Map<String, Object> data = json.decode(file.readAsStringSync());

  // Current list of people
  print("\nHello there!. We know the birthdays of the following people: \n");
  data.forEach((key, value) {
    print(key);
  });

  // User interaction
  stdout.write("\nWho's birthday do you want to know? ");
  String choice = stdin.readLineSync();
  print("\n$choice's birthday is ${data[choice]}\n");

  stdout.write("\nWould you like to add more people's birthdays? ");
  String answer = stdin.readLineSync().toLowerCase();

  // Update the file
  if (answer == "yes") {
    stdout.write("Give us a name: ");
    String name = stdin.readLineSync();
    stdout.write("Give us their birthday (dd/mm/yyyy): ");
    String birthday = stdin.readLineSync();

    data[name] = birthday;
    file.writeAsStringSync(json.encode(data));

    print("\nThank you! We have more people now!\n");

    data.forEach(
      (key, value) {
        print("$key: $value");
      },
    );
  } else {
    print("\nOK. Bye bye!\n");
  }
}
