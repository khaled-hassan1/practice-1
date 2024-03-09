import 'dart:io';

void main() {
  stdout.write('Days: ');
  int days = int.parse(stdin.readLineSync()!);
  stdout.write('Hours: ');
  int hours = int.parse(stdin.readLineSync()!);
  stdout.write('Minutes: ');
  int minutes = int.parse(stdin.readLineSync()!);
  stdout.write('Seconds: ');
  int seconds = int.parse(stdin.readLineSync()!);
  int totalSeconds =
      (days * 24 * 60 * 60) + (hours * 60 * 60) + (minutes * 60) + seconds;
  print(totalSeconds);
}
