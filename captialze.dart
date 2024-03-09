import 'dart:io';

void main() {
  stdout.write('Your sentence: ');
  String sentence = stdin.readLineSync()!;
  print(sentence.capitalize());
  // print(s('khaled hassan'));
}

// String s(String w) {
//   List<String> word = w.split(' ');
//   for (var i = 0; i < word.length; i++) {
//     word[i] = word[i][0].toUpperCase() + word[i].substring(1);
//   }
//   return word.join(' ');
// }

extension StringExtension on String {
  String capitalize() {
    try {
      if (this.contains(' ')) {
        List<String> words = this.split('');
        List<String> capitalizedWords = words
            .map((word) => word[0].toUpperCase() + word.substring(1))
            .toList();
        return capitalizedWords.join(' | ');
      } else {
        return this[0].toUpperCase() + this.substring(1).split('').join(' | ');
      }
    } on Exception catch (e) {
      return e.toString();
    }
  }
}
// extension PaddingAfterEachCharacter on String {
//   String capitalizeAndPad() {
//     // Check if the string is not empty
//     if (this.isEmpty) {
//       return '';
//     }

//     // Capitalize the first letter
//     String result = '${this[0].toUpperCase()} | ';

//     // Add " | " after each character
//     result += this.substring(1).split('').join(' | ');

//     return result;
//   }
// }

// void main() {
//   String inputString = 'hello';
//   String paddedString = inputString.capitalizeAndPad();

//   print('Original string: $inputString');
//   print('Transformed string: $paddedString');
// }
