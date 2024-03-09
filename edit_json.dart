import 'dart:convert';
import 'dart:io';

void main() {
  File file = File('json_code.json');
  Map<String, dynamic> data = json.decode(file.readAsStringSync());

  while (true) {
    print('chose one  of these: ');
    print('1_ look up the bithday');
    print('2_ add birthay');
    print('3_ list bithdays');
    print('4_ quit');
    stdout.write('>> ');
    String chosen = stdin.readLineSync()!;

    if (chosen == '1') {
      return lookUp(data);
    } else if (chosen == '2') {
      return addBirthday(data);
    } else if (chosen == '3') {
      return listAllBirth(data);
    } else if (chosen == '4') {
      endProgram();
    } else {
      return;
    }
  }
}

void endProgram() {
  print('Bye bye');
  exit(0);
}

void lookUp(Map<String, dynamic> birthay) {
  stdout.write('the name you want look up:');
  String name = stdin.readLineSync()!;
  if (birthay.containsKey(name)) {
    print('$name : ${birthay[name]}');
  } else {
    print("$name not found in dictionary");
  }
}

void addBirthday(Map<String, dynamic> birthday) {
  stdout.write('the name: ');
  String userName = stdin.readLineSync()!;

  stdout.write('the birthday: ');
  String userBirth = stdin.readLineSync()!;
  birthday[userName] = userBirth;
  File file = File('birthday.json');
  file.writeAsStringSync(json.encode(birthday));
  print('$userName was added to the dictionary.');
}

void listAllBirth(Map<String, dynamic> birthday) {
  for (String name in birthday.keys) {
    print('$name : ${birthday[name]}');
  }
}
