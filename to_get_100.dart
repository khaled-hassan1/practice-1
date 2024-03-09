import 'dart:io';

void main() {
  stdout.write('your name: ');
  String? name = stdin.readLineSync();

  stdout.write('your age: ');
  int? age = int.parse(stdin.readLineSync()!);
  int result = 100 - age;
  print("Hello, $name.\nyour age $age need $result to reach 100 years.");
}