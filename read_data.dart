void main() {
  info([
    {'name': 'khaled', 'age': 26, 'Tel': 012, 'password': 'dh8841wse@#'},
    {'name': 'hassan', 'age': 60, 'Tel': 010, 'password': 'dh8841wse@#'},
  ]);
}

void info(List<Map> list){
  List<dynamic> Userlist = list;
 Userlist.forEach((element) {
    print(' name <= ${element['name']}');
    print(' age <= ${element['age']}');
    print(' Tel <= ${element['Tel']}');
    if (element['password'] == null) {
    return print(' password <= fff');  
  }
    print(' password <= ${element['password']}');
    print('*' * 50);
  });
}