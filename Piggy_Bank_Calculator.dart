import 'dart:io';

void main() {
  stdout.write('Penny: ');
  int Penny = int.parse(stdin.readLineSync()!);
  stdout.write('Nickle: ');
  int Nickle = int.parse(stdin.readLineSync()!);
  stdout.write('Dimes: ');
  int Dimes = int.parse(stdin.readLineSync()!);
  stdout.write('Quarter: ');
  int Quarter = int.parse(stdin.readLineSync()!);
  stdout.write('Dollar: ');
  int Dollar = int.parse(stdin.readLineSync()!);

  double totalPenny =
      Penny * 1 + Nickle * 5 + Dimes * 10 + Quarter * 25 + Dollar * 100;
  double totalDollar = totalPenny / 100;
  
  print('Total Penny: $totalPenny');
  print('Total Dollar: $totalDollar');
}
