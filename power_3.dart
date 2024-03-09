import 'dart:io';
import 'dart:math';

void main() {
  stdout.write('n: ');
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('power: ');
  int p = int.parse(stdin.readLineSync()!);
  late num r;
  r = pow(n, p);
  print('$n power $p = $r');
}
