import 'dart:io';

void main() {
  stdout.write('Total Sales: ');
  int totalSales = int.parse(stdin.readLineSync()!);
  double commissionRate;

  if (totalSales >= 1000000) {
    commissionRate = 1.0;
  } else if (totalSales >= 500000) {
    commissionRate = 2.0;
  } else if (totalSales >= 100000) {
    commissionRate = 3.0;
  } else if (totalSales >= 50000) {
    commissionRate = 4.0;
  } else {
    commissionRate = 0.0;
  }

  double commission = (totalSales * commissionRate) / 100;
  print('Your Commission: $commission');
}
