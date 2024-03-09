import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('if you want close put (q/Q)? or press Enter to continue : ');
  String out = stdin.readLineSync()!;

  int random = Random().nextInt(10);
  int counter = 1;
  if (out != 'q' && out != 'Q') {
    print('you have 3 attempts .');
  }
  while (counter < 4) {
    if (out == 'q' || out == 'Q') {
      print("Bye");
      break;
    }
    stdout.write('guess the number: ');
    int number = int.parse(stdin.readLineSync()!);
    int difference = number - random;
    if (difference.abs() <= 2) {
      if (number > random) {
        print('too high');
      } else {
        print('too low');
      }
    }
    print('No, it\'s your $counter attempts.');
    counter++;
  }
}