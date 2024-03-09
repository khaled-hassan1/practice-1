import 'dart:io';

void main() {
  stdout.write('Hours: ');
  int hours = int.parse(stdin.readLineSync()!);
  double days = hours / 24;
  print('Days: ${days.toStringAsFixed(2)}');
  double weeks = days / 7;
  print('Weeks: ${weeks.toStringAsFixed(2)}');
}
