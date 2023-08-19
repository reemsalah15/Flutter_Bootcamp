// Dart Program: List Statistics
// This program takes user input for a list of numbers,
// calculates the sum, average, maximum, and minimum values,
// and then displays the results.

import 'dart:io';

void main() {
  // Prompt the user to enter the number of elements in the list
  print("Enter the number of elements in the list: ");
  int? n = int.parse(stdin.readLineSync()!);

  // Initialize an empty list to store the numbers and variables for statistics
  List<int> num_list = [];
  int sum_list = 0;

  // Prompt the user to enter the elements of the list one by one
  print("Enter the elements of the list: ");

  for (int i = 0; i < n; i++) {
    // Read and parse user input as integers, then add them to the list
    int x = int.parse(stdin.readLineSync()!);
    num_list.add(x);
    sum_list = sum_list + x;
  }

  // Calculate the average, maximum, and minimum values of the list
  double ave = sum_list / n;
  int max = num_list[0];
  int min = num_list[0];

  for (int i = 0; i < n; i++) {
    if (num_list[i] >= max) {
      max = num_list[i];
    }
    if (num_list[i] <= min) {
      min = num_list[i];
    }
  }

  // Display the list and statistics to the user
  print("Entered list: $num_list");
  print("Sum of the numbers is $sum_list");
  print("Average of the numbers is $ave");
  print("Maximum number in the list is $max");
  print("Minimum number in the list is $min");
}

