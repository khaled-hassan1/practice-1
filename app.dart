import 'dart:convert';
import 'dart:io';

void main() {
  final File jsonFile = File('json_code.json');
  final Map<String, dynamic> birthdays =
      json.decode(jsonFile.readAsStringSync());

  while (true) {
    print('Select an option:');
    print('1. Look up a birthday');
    print('2. Add a new birthday');
    print('3. List all birthdays');
    print('4. Quit');

    String selection = stdin.readLineSync()!.trim();

    switch (selection) {
      case '1':
        lookUp(birthdays);
        break;
      case '2':
        addBirthday(birthdays);
        break;
      case '3':
        listBirthdays(birthdays);
        break;
      case '4':
        endProgram();
        break;
      default:
        invalidInput();
        break;
    }
  }
}

void lookUp(Map<String, dynamic> birthdays) {
  print('Enter a name to look up: ');
  String name = stdin.readLineSync()!.trim();
  if (birthdays.containsKey(name)) {
    print('$name was born on ${birthdays[name]}.');
  } else {
    print('Sorry, $name does not have a listed birthday.');
  }
}

void addBirthday(Map<String, dynamic> birthdays) {
  print('Enter the name of the scientist to add: ');
  String name = stdin.readLineSync()!.trim();
  print('Enter their birthday (DD/MM/YYYY): ');
  String date = stdin.readLineSync()!.trim();
  birthdays[name] = date;

  final File jsonFile = File('birthdays.json');
  jsonFile.writeAsStringSync(json.encode(birthdays));

  print('$name was added to the dictionary.');
}

void listBirthdays(Map<String, dynamic> birthdays) {
  print('List of birthdays:');
  for (String name in birthdays.keys) {
    print('$name: ${birthdays[name]}');
  }
}

void invalidInput() {
  print('Invalid input, please try again.');
}

void endProgram() {
  print('Goodbye!');
  exit(0);
}