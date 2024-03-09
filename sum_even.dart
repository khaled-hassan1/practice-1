void main(List<String> args) {
  print('sum even is:  ${getEven([1, 2, 3, 4, 5, 6])}');
}

int getEven(List<int> numbers) {
  int sum = 0;
  print('the all list: ${numbers}');
  var even = numbers.where((element) => element % 2 == 0).toList();
  print('the even: ${even}');
  for (var number in numbers) {
    if (number.isEven) {
      sum += number;
    }
  }
  return sum;
}
