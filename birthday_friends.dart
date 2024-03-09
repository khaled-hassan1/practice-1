import 'dart:io';

void main() {
  Map<String, String> mapInfo = {
    'khaled': '26/3/1997',
    'hassan': '23/4/1960',
    'nahed': '19/9/1970',
    'mahmoud': '19/10/1999',
    'rahma': '15/9/2008',
    'nada': '8/2/1998',
  };
  print(
      '#### Welcome to the birthday dictionary. We know the birthdays of:[khaled,hassan,rahma,nahed,mahmoud,nada] ####');
  stdout.write('>>> Who\'s birthday do you want to look up?  ');
  String names = stdin.readLineSync()!;
  bool isFound = false;
  mapInfo.forEach(
    (key, value) {
      if (names == key) {
        print('>>> ${key}\'s birthday is ${value}.');
        isFound = true;
      }
    },
  );
  if (!isFound) {
    print('$names not found.');
  }
}
