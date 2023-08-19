import 'dart:io';
void main() {
  // Define a list of products, where each product is represented as a map.
  List products = [
    {
      'name': 'tea',
      'color': 'black',
      'price': 50
    },
    {
      'name': 'rice',
      'color': 'white',
      'price': 25
    }
  ];

  // Print the table header.
  print("Product_Name\tColor\tPrice");

  // Loop through the list of products.
  for (int i = 0; i < products.length; i++) {
    // Iterate through the key-value pairs of each product.
    products[i].forEach((key, value) {
      // Print the value, separated by tabs, without moving to the next line.
      stdout.write('    $value  ');
    });

    // Print a newline character to move to the next row in the table.
    print('\n');
  }
}
