import 'dart:io';

void main() {
  stdout.write('Number 1: ');
  int number1 = int.parse(stdin.readLineSync()!);
  stdout.write('Number 2: ');
  int number2 = int.parse(stdin.readLineSync()!);
  stdout.write('Operation Type: ');
  String operation = stdin.readLineSync()!;
  if (operation == '+') {
    int r = number1 + number2;
    print('$number1 + $number2 = $r');
  } else if (operation == '-') {
    int r = number1 - number2;
    print('$number1 - $number2 = $r');
  } else if (operation == '*') {
    int r = number1 * number2;
    print('$number1 * $number2 = $r');
  } else if (operation == '/') {
    double r = number1 / number2;
    print('$number1 / $number2 = $r');
  } else {
    print('Wrong operation');
  }
}
