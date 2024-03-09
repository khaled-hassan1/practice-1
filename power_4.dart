import 'dart:io';

void main() {
  stdout.write('n: ');
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('power: ');
  int m = int.parse(stdin.readLineSync()!);
  int p = 1;
  int c = 0;
  while (true) {
    if (m == 0) {
      print(p);
      break;
    }
    p = p * n;
    c = c + 1;
    if (c == m) {
      print(p);
      break;
    }
  }
}
