import 'dart:io';

void main() {
  stdout.write('Your number to built an Ascii : ');
  int number = int.parse(stdin.readLineSync()!);
  // asciiArt(number);
  asciiArt2(number);
}

void asciiArt2(int length) {
  String rowLines = ' ---';
  String colLines = '|   ';
  for (var i = 0; i < length; i++) {
    print(rowLines * length);
    print(colLines * (length + 1));
  }
  print('${rowLines * length}');
}
// void asciiArt(int length) {
//   String a = '---';
//   String b = '|';
//   for (var i = 0; i < length; i++) {
//     for (var i = 0; i < 1; i++) {
//       print(" " + a + ' ' + a + ' ' + a);
//       print(b + "   " + b + "   " + b + "   " + b);
//     }
//   }
//   print(" " + a + ' ' + a + ' ' + a);
// }
