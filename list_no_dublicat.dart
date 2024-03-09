import 'dart:math';

void main() {
  final random = Random();
  List<int> list = List.generate(10, (_) => random.nextInt(10));
  print('original list is      $list');
  List<int> removeDublicate(List<int> change) {
    return change.toSet().toList();
  }

  print('without dublicate is  ${removeDublicate(list)}');
}
