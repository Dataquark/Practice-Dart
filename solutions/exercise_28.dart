import 'dart:io';
import 'dart:convert';
import 'package:intl/intl.dart';

void main() {
  // Read the Json file
  File file = File("../birthdays.json");
  Map<String, Object> data = json.decode(file.readAsStringSync());

  // Extract the months to a list
  DateFormat extractor = DateFormat("MMMM");
  List<String> months = [
    for (var d in data.values) extractor.format(formatter(d))
  ];

  // Count the occurance of each month
  counter(months);
}

DateTime formatter(String birthday) {
  /*
  Takes a string and returns a Datetime object
  */
  return DateFormat("dd/MM/yyyy").parse(birthday);
}

void counter(List m) {
  /*
  Takes a lits of months and counts their occurances
  Saves them to a map and prints the results
  */
  Map<String, int> occurances = {};

  m.forEach((e) {
    if (!occurances.containsKey(e)) {
      occurances[e] = 1;
    } else {
      occurances[e] += 1;
    }
  });

  print("\nHere are the counts:\n");
  occurances.forEach((key, value) {
    print("$key: $value");
  });
}
