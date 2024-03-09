
List<int> doubleList(List<int> numbers) {
  // Your logic goes here
  List<int> newList = [];
  print('the old list: $numbers');
  for (var n in numbers) {
    newList.add(n + n);
  }
  return newList; // You should return a new list with all elements doubled.
}

void main(List<String> args) {
  print('double list : ${doubleList([1, 2, 3, 4, 5])}');
}