import 'dart:io';

void main() {
  // Create an empty list to store integers
  List<int> my_list = [];

  // Populate the list by getting input from the user
  GetList(my_list);

  // Calculate the sum of the elements in the list
  int sum = SumList(my_list);

  // Calculate the average of the elements in the list
  double avg = AVGList(my_list);

  // Print the sum and average.
  print("Sum is $sum");
  print("Average is $avg");

  // Display the elements in the list
  ShowList(my_list);

  // Find and display the maximum and minimum values in the list
  Map my_max_min = MaxAndMin(my_list);
  print(my_max_min);
}

// Function to populate the list with user input
GetList(List<int> m_list) {
  print("Please Enter size of list: ");
  int size = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < size; i++) {
    print("Enter Element [${i + 1}]:");
    m_list.add(int.parse(stdin.readLineSync()!));
  }
}

// Function to calculate the sum of elements in the list
int SumList(List<int> m_list) {
  int sum = 0;
  for (int i = 0; i < m_list.length; i++) {
    sum += m_list[i];
  }
  return sum;
}

// Function to calculate the average of elements in the list
double AVGList(List<int> m_list) {
  int sum = 0;
  for (int i = 0; i < m_list.length; i++) {
    sum += m_list[i];
  }
  return sum / m_list.length;
}

// Function to display the elements in the list
ShowList(List<int> m_list) {
  m_list.forEach((element) {
    print(element);
  });
}

// Function to find the maximum and minimum values in the list
Map MaxAndMin(List<int> m_list) {
  int max = m_list[0];
  int min = m_list[0];
  for (int i = 0; i < m_list.length; i++) {
    if (max <= m_list[i])
      max = m_list[i];
    else
      min = m_list[i];
  }
  Map max_min = {'Max': max, 'Min': min};
  return max_min;
}
