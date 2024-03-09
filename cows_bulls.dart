// ignore_for_file: unnecessary_null_comparison

import 'dart:io';

void main() {
  int countTryies = 1;

  while (true) {
    stdout.write('guess a 4-digit number > ');
    String userGuess = stdin.readLineSync()!;

    if (userGuess != null && userGuess.length == 4) {
      List<int> n = [1, 2, 3, 4];
      String digitNumbers = n.join().split(',').join();

      final cows = [];
      final bulls = [];
      int countCows = 0;
      int countBulls = 0;
      if (userGuess == digitNumbers) {
        print('🎉 Congratulations 🎉');
        break;
      }
      for (var i = 0; i < userGuess.length; i++) {
        if (userGuess[i] == digitNumbers[i]) {
          cows.add(userGuess[i]);
          countCows += 1;
        } else {
          bulls.add(userGuess[i]);
          countBulls += 1;
        }
      }
      print('Your tries number is $countTryies');
      print('$countCows in cows: ${cows.join()}');
      print('${countBulls} in bulls: ${bulls.join()}');
    }
    if (userGuess == null || userGuess.toString().length != 4) {
      print('Only 4 digit number');

      stdout.write('Do you want continue? (y/n) > ');
      String userOption = stdin.readLineSync()!;
      if (userOption == 'y' || userGuess == 'Y') {
        continue;
      } else {
        break;
      }
    }
    countTryies++;
  }
}
