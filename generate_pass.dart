void main() {
  
  generatePassword(10);
}

void generatePassword(int length) {
  String _chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#%^&*()-+{}[]|:;<>,./?';
  List<String> list = [];
  for (var i = 0; i < _chars.length; i++) {
    list.add(_chars[i]);
  }
  list.shuffle();
  String password = list.take(length).join();
  print('Your password after generated is: ${password}');
}
