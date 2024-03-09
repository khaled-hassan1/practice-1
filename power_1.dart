import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('n: ');
  int n = int.parse(stdin.readLineSync()!);
  num o = 0;
  num ss = 0;
  num sss = 0;
  for (var i = 0; i <= n; i++) {
    o = pow(i, 2);
    ss = pow(i, 3);
    sss = pow(i, 4);
  }
  print(o);
  print(ss);
  print(sss);
}
