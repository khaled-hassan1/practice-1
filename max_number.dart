void main() {
  print(maxNumber(1000, 2002));
  print(maxNumber2(200, 40, 100));
  print(maxNumber3([100, 200, 300]));
}

int maxNumber(int n1, int n2) {
  if (n1 > n2) {
    return n1;
  } else {
    return n2;
  }
}

int maxNumber2(int n1, int n2, int n3) {
  if (n1 > n2 && n1 > n3) {
    return n1;
  } else if (n2 > n1 && n2 > n3) {
    return n2;
  } else {
    return n3;
  }
}

int maxNumber3(List<int> list) {
  int w = list.reduce((a, b) => a > b ? a : b);
  return w;
}

// without funcation
int findMax(List<int> numbers) {
 if (numbers.isEmpty) {
   throw ArgumentError('the list is empty');
 }
int max=numbers[0];
for (var number in numbers) {
  if (number>max) {
    max=number;
  }
}
  return max;
}