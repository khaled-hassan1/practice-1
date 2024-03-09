import 'dart:io';

void main() {
  stdout.write('n: ');
  int n = int.parse(stdin.readLineSync()!);
  int f = 1;
  if (n <= 0) {
    f = 0;
    print(f);
    return;
  } else {
    for (var i = 1; i <= n; i++) {
      f *= i;
    }
    print(f);
  }
}
