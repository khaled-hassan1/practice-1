// import 'dart:io';

// void main() {
//   print('######## Height must be between 1 to 8 ##########');

//   while (true) {
//     stdout.write('Height: ');
//     int height = int.parse(stdin.readLineSync()!);

//     try {
//       if (height > 8 || height < 1) {
//         print('only from 1 to 8');
//         break;
//       } else {
//         for (int row = 0; row < height; row++) {
//           for (var space = 0; space < height - row - 1; space++) {
//             stdout.write(' ');
//           }
//           for (int column = 0; column <= row; column++) {
//             stdout.write('*');
//           }
//           stdout.write('\n');
//         }
//         continue;
//       }
//     } catch (FormatException) {
//       print(
//           '$height is not a valid input. Please enter an integer between 1 and 8.');
//     }
//   }
// }
import 'dart:io';

void main(List<String> args) {
  print('@@@@@@@@@@@@@@ Note Book @@@@@@@@@@@@@@@');
  while (true) {
    print('chose your option: ');
    print('1_ Look at the note.');
    print('2_ Add to note.');
    print('3_ Edit note.');
    print('4_ Delete note.');
    print('5_ Exit.');
    stdout.write('> ');
    String user = stdin.readLineSync()!.trim();
    if (user.isEmpty) {
      print('Invalid input.');
      continue;
    } else if (user == '1') {
      // see Note
      _seeNote();
    } else if (user == '2') {
      // Add note
      _addNote();
    } else if (user == '3') {
      // Edit note
      _editNote();
    } else if (user == '4') {
      // Delete note
      _deleteNote();
    } else if (user == '5') {
      // Exit
      _exitNote();
    } else {
      print('$user invalid input.');
      exit(0);
    }
  }
}

void _seeNote() {
  File file = File('note.txt')..createSync();
  if (file.existsSync()) {
    String content = file.readAsStringSync();
    List<String> lines = content.split('\n');
    // print('Number of lines: ${lines.length}');
    for (var i = 0; i < lines.length; i++) {
      print('$i => ${lines[i]}');
    }
  } else {
    print('File does not exist or is empty.');
  }
}

void _editNote() {
  File file = File('note.txt');
  String content = file.readAsStringSync().trim();
  print('Current Note: ');
  _seeNote();
  stdout.write('Enter the number of line: ');
  int lineNumbers = int.parse(stdin.readLineSync()!);
  List<String> lines = content.split('\n');
  if (lineNumbers >= 0 && lineNumbers < lines.length) {
    stdout.write('Enter the new text for the selected line: ');
    String newLine = stdin.readLineSync()!;
    lines[lineNumbers] = newLine;
    content = lines.join('\n');
    file.writeAsStringSync(content, mode: FileMode.write);
  } else {
    print('Invalid line number.');
  }
  print('Note Edited.');
}

void _deleteNote() {
  File file = File('note.txt');
  String content = file.readAsStringSync().trim();
  print('Current Note:');
  _seeNote();

  stdout.write(
      'Enter line numbers to delete or lines with(comma(,)-separated) or (all) to delete all: ');
  String lineNumbersInput = stdin.readLineSync()!.trim();
  if (lineNumbersInput.toLowerCase() == 'all') {
    // Delete the entire file
    file.deleteSync();
    print('All lines deleted. The file is empty.');
  } else {
    List<int?> linesToDelete =
        lineNumbersInput.split(',').map(int.tryParse).toList();

    // Filter out any null values (e.g., invalid input)
    linesToDelete.removeWhere((line) => line == null);

    // Sort the list in descending order to delete lines from the end to avoid shifting line numbers
    linesToDelete.sort((a, b) => b!.compareTo(a!));

    List<String> lines = content.split('\n');

    // Confirm the deletion
    stdout.write('Confirm? (y/n) ');
    String confirm = stdin.readLineSync()!.toLowerCase().trim();
    if (confirm == 'y') {
      for (int i = 0; i < linesToDelete.length; i++) {
        int line = linesToDelete[i]!;
        if (line >= 0 && line < lines.length) {
          lines.removeAt(line);
        } else {
          print('Invalid line number: $line');
        }
      }
      content = lines.join('\n');
      file.writeAsStringSync(content, mode: FileMode.write);
      print('Selected lines deleted.');
    } else {
      return;
    }
  }
}

void _addNote() {
  File file = File('note.txt');
  stdout.write('Write your note: ');
  String add = stdin.readLineSync()!.trim();
  add += '\n';
  file.writeAsStringSync(add, mode: FileMode.append);
  print('\nNote Added.');
}

void _exitNote() {
  print('Note Closed.');
  exit(0);
}
