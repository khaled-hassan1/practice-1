import 'dart:io';

void main() {
  int sum = 0;
  while (true) {
    stdout.write('Number or (input -99 to exit): ');
    int number = int.parse(stdin.readLineSync()!);
    if (number == -99) {
      break;
    }
    sum = sum + number;
  }
  print('Result: $sum');
}
