import 'dart:io';

void main() {
  stdout.write('loan: ');
  int loan;
  try {
    loan = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Invalid input for loan. Please enter a valid integer.');
    return;
  }

  stdout.write('How many months: ');
  int inMonth;
  try {
    inMonth = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Invalid input for months. Please enter a valid integer.');
    return;
  }

  if (inMonth == 0) {
    print('Number of months cannot be zero.');
    return;
  }

  double total = loan / inMonth;
  print('Total monthly payment: \$${total.toStringAsFixed(2)}');
}
