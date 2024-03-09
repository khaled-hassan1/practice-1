import 'dart:io';

void main() {
  // Output in English - Prompting the user for the loan amount
  stdout.write('Loan Amount: ');
  int loan;
  try {
    // Input in English - Reading the loan amount
    loan = int.parse(stdin.readLineSync()!);
  } catch (e) {
    // Output in English - Error message for invalid loan input
    print('Invalid input for the loan amount. Please enter a valid integer.');
    return;
  }

  // Output in English - Prompting the user for the monthly installment
  stdout.write('Monthly Installment: ');
  int installment;
  try {
    // Input in English - Reading the monthly installment
    installment = int.parse(stdin.readLineSync()!);
  } catch (e) {
    // Output in English - Error message for invalid monthly installment input
    print('Invalid input for the monthly installment. Please enter a valid integer.');
    return;
  }

  if (installment <= 0) {
    // Output in English - Error message for non-positive installment amount
    print('The monthly installment should be greater than zero.');
    return;
  }

  int numberOfMonths = (loan / installment).ceil();
  // Output in English - Displaying the number of months needed to repay the loan
  print('You will need $numberOfMonths months to repay the loan.');
}
