# Customer Data Analysis

This Dart program allows you to collect and analyze data for multiple customers and their purchases. It calculates the average product price for each customer and assigns a status based on the average price.

## Usage

1. Run the program.
2. Enter the number of customers you want to analyze.
3. For each customer, enter their name, ID, the number of products they purchased, and the prices of those products.

The program will then calculate the average product price for each customer and assign a status of "Poor," "Intermediate," or "Rich" based on the average price.

## Example

```dart
Please Enter Number of Customers: 2

Enter name of Customer [1]:
John Doe
Enter ID of Customer [1]:
101
Enter no. of products for Customer [1]:
3
Enter prices of products for Customer [1]:
50.0
75.0
120.0

Enter name of Customer [2]:
Jane Smith
Enter ID of Customer [2]:
102
Enter no. of products for Customer [2]:
2
Enter prices of products for Customer [2]:
25.0
90.0

Customer Data:
{
  Name: John Doe,
  ID: 101,
  Product_Price: [50.0, 75.0, 120.0],
  Sum: 245.0,
  Average: 81.67,
  Status: Intermediate
}

{
  Name: Jane Smith,
  ID: 102,
  Product_Price: [25.0, 90.0],
  Sum: 115.0,
  Average: 57.5,
  Status: Intermediate
}
```

This program can be used to analyze and categorize customer spending habits based on the average product price.