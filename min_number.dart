void main() {
  print(minNumber(1000, 2002));

  print(minNumber2(200, 40, 100));

  print(minNumber3([100, 200, 300]));
}

int minNumber(int n1, int n2) {
  if (n1 < n2) {
    return n1;
  } else {
    return n2;
  }
}

int minNumber2(int n1, int n2, int n3) {
  if (n1 < n2 && n1 < n3) {
    return n1;
  } else if (n2 < n1 && n2 < n3) {
    return n2;
  } else {
    return n3;
  }
}

int minNumber3(List<int> list) {
  int w = list.reduce((a, b) => a < b ? a : b);
  return w;
}
