import 'dart:io';
import 'dart:math';

void main() {
  print('your options are: Rock-Paper-Scissors.');
  stdout.write('player1 chose your options: ');
  final player1 = stdin.readLineSync()!.toLowerCase().trim();

  stdout.write('player2 chose your options: ');
  final player2 = stdin.readLineSync()!.toLowerCase().trim();

  List<String> options = ['rock', 'paper', 'scissors'];
  Random random = Random();
  final e = options[random.nextInt(options.length)];
  if (e == player1) {
    print('bravoo player 1');
  } else if (e != player1) {
    print('try player 1');
  }
  if (e == player2) {
    print('bravoo player 2');
  } else if (e != player2) {
    print('try player 2');
  }
  print("random computer is $e");
}