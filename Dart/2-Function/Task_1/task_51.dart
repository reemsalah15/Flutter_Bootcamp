import 'dart:io';

void main() {
  // Initialize lists and variables to store customer data and calculations
  List<Map> customers = []; // List to store customer information as maps
  List<double> prices = []; // List to store product prices for each customer
  double sum = 0; // Variable to calculate the sum of product prices for each customer
  double avg; // Variable to calculate the average product price for each customer
  String status; // Variable to determine customer status based on average product price

  // Prompt the user to enter the number of customers
  print("Please Enter Number of Customers: ");
  int n = int.parse(stdin.readLineSync()!);

  // Loop through each customer
  for (int i = 0; i < n; i++) {
    // Prompt for customer details
    print("Enter name of Customer [${i + 1}]:");
    String name = stdin.readLineSync()!;
    print("Enter ID of Customer [${i + 1}]:");
    int id = int.parse(stdin.readLineSync()!);
    print("Enter no. of products for Customer [${i + 1}]:");
    int n_product = int.parse(stdin.readLineSync()!);
    print("Enter prices of products for Customer [${i + 1}]:");
    prices = [];

    // Loop through each product price and calculate sum
    for (int j = 0; j < n_product; j++) {
      double price = double.parse(stdin.readLineSync()!);
      prices.add(price);
      sum += price;
    }

    // Calculate average product price and determine customer status
    avg = (sum / n_product).roundToDouble();
    if (avg < 100)
      status = "Poor";
    else if (avg < 300)
      status = "Intermediate";
    else
      status = "Rich";

    // Create a customer map and add it to the customers list
    Map m_customers = {
      'Name': name,
      'ID': id,
      'Product_Price': prices,
      'Sum ': sum,
      'Average': avg,
      'Status': status
    };
    customers.add(m_customers);

    // Reset the sum for the next customer
    sum = 0;
  }

  // Print customer information
  customers.forEach((element) {
    print(element);
  });
}
