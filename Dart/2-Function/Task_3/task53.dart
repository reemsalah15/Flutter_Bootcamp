import 'dart:io';

void main() {
  // Create an empty map to store key-value pairs (String-Int)
  Map<String, int> my_map = {};

  // Populate the map by getting input from the user
  GetMap(my_map);

  // Calculate the sum of values in the map
  int sum = SumMap(my_map);

  // Calculate the average of values in the map
  double avg = AVGMap(my_map);

  // Print the sum and average
  print("Sum is $sum");
  print("Average is $avg");

  // Display the key-value pairs in the map
  ShowList(my_map);

  // Find and print the maximum and minimum values in the map
  Map mx_mn = MaxAndMin(my_map);
  print("Max is ${mx_mn[mx_mn.keys.first]}");
  print("Min is ${mx_mn[mx_mn.keys.last]}");
}

// Function to populate the map with user input
GetMap(Map<String, int> m_map) {
  print("Please Enter size: ");
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    print("Enter key [${i + 1}]:");
    String key = stdin.readLineSync()!;
    print("Enter value of key [${i + 1}]:");
    int val = int.parse(stdin.readLineSync()!);
    m_map[key] = val;
  }
}

// Function to calculate the sum of values in the map
int SumMap(Map<String, int> m_map) {
  int sum = 0;
  m_map.forEach((key, value) {
    sum = sum + value;
  });
  return sum;
}

// Function to calculate the average of values in the map
double AVGMap(Map<String, int> m_map) {
  return SumMap(m_map) / m_map.length;
}

// Function to display the key-value pairs in the map
ShowList(Map<String, int> m_map) {
  m_map.forEach((key, value) {
    print("$key : $value");
  });
}

// Function to find the maximum and minimum values in the map
Map MaxAndMin(Map<String, int> m_map) {
  List<String> keys = [];
  m_map.forEach((key, value) {
    keys.add(key);
  });
  int? max = m_map[keys[0]];
  int? min = m_map[keys[0]];
  m_map.forEach((key, value) {
    if (max! <= value) {
      max = value;
    }
    if (min! >= value) min = value;
  });
  Map max_min = {'Max': max, 'Min': min};
  return max_min;
}

