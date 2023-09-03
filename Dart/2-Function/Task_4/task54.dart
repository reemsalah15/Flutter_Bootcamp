import 'dart:io';
// Function for performing basic operations (+, -, *, /) on two numbers
void main() {
  print("Enter two numbers:");
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);

  // Specify the operation to be performed by passing the operator as an argument
  // The default operator is division ('/')
  int result = Operation(n1: num1, n2: num2, ope: '/');

  // Print the result of the operation
  print(result);
}

// Function to perform basic arithmetic operations on two numbers
// The 'ope' parameter specifies the operator
Operation({required String ope, int n1 = 0, int n2 = 0}) {
  switch (ope) {
    case '+':
      return n1 + n2;
    case '-':
      return n1 - n2;
    case '*':
      return n1 * n2;
    case '/':
      return (n1 / n2).toInt();
  }
}
