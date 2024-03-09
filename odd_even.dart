import 'dart:io';

void main(List<String> args) {
  stdout.write('your number to check is odd or even: ');
  int? age = int.parse(stdin.readLineSync()!);
  if (age % 2 == 0) {
    print('$age it is even.');
  } else
    print('$age it is odd.');
}
