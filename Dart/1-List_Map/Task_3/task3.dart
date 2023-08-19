import 'dart:io';

void main() {
  // Create an empty map to store key-value pairs.
  Map myMap = {};

  // Create an empty list to store keys.
  List keys = [];

  // Prompt the user to enter the size of the map.
  print("Enter size: ");
  int size = int.parse(stdin.readLineSync()!);

  // Loop to input key-value pairs based on the specified size.
  for (int i = 0; i < size; i++) {
    // Prompt the user to enter a key.
    print("Enter Key: ");
    String myKey = stdin.readLineSync()!;

    // Prompt the user to enter a value.
    print("Enter Value: ");
    int myValue = int.parse(stdin.readLineSync()!);

    // Add the key-value pair to the map and add the key to the list.
    myMap[myKey] = myValue;
    keys.add(myKey);
  }

  // Display the map containing key-value pairs.
  print(myMap);

  // Initialize variables to store the maximum and minimum values.
  int max = myMap[keys[0]];
  int min = myMap[keys[0]];

  // Loop through the map to find the maximum and minimum values.
  myMap.forEach((key, value) {
    if (value >= max) {
      max = value;
    }
    if (value <= min) {
      min = value;
    }
  });

  // Display the maximum and minimum values.
  print("Maximum number in the map is $max");
  print("Minimum number in the map is $min");
}
