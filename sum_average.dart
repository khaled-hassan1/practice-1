void main() {
  averageNumbers([10, 20, 30, 40, 50, 60]);
}

void averageNumbers(List<int> list) {
  List<int> numbers = list;
  int sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
    if (i + 1 == numbers.length) {
      print('The sum is $sum');
      print("The averge is ${sum / numbers.length}");
    }
  }
}