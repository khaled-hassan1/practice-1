import 'dart:io';
import 'dart:math';

void main() {
  String filePath = 'word.txt';
  String contect = fileReader(filePath);
  List<String> words = contect.split(' ');
  var random = Random().nextInt(words.length);
  String w = words[random].trim();
  print(w);
}

String fileReader(String file) {
  var files = File(file).readAsStringSync();
  return files;
}
