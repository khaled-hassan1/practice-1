import 'dart:io';

void main() {
  stdout.write('Baill Value: ');
  int billValue = int.parse(stdin.readLineSync()!);
  double totalBill = billValue * 1.1;
  print('with services = ${totalBill.toStringAsFixed(2)}');
  totalBill = totalBill * 1.16;
  print('with sales tax : ${totalBill.toStringAsFixed(2)}');
  print('Total : ${totalBill.toStringAsFixed(2)}');
}
