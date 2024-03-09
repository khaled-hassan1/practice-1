import 'dart:io';

void main() {
  int sum = 0;
  while (true) {
    stdout.write('Number: ');
    int number = int.parse(stdin.readLineSync()!);
    if (number == -99) {
      break;
    }
    sum = sum + number;
  }
  print('Result: $sum');
}
