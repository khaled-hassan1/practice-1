import 'dart:io';

void main() {
  stdout.write('sentence: ');
  String words = stdin.readLineSync()!;
  reverseString(words);
}

void reverseString(String sentence) {
  String words = sentence.split(' ').reversed.toList().join(' ');
  print(words);
}
