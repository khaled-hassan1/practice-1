void main() {
  firstAndLastElement([0,5, 10, 15, 20, 25,30]);
}

void firstAndLastElement(List<int> list) {
  print(
      'first element is: ${list[0]} \nlast  element is: ${list[list.length - 1]}');
  final newList = [];
  newList.addAll([list[0], list[list.length - 1]]);
  print("in list: ${newList}");
}
