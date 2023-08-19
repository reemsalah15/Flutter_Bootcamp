// Dart List Operations Program
import 'dart:io';
void main() {
  // Initialize an empty list to store integers.
  List<int> myList = [];

  // Initialize a variable to control the loop.
  String again = "y";

  // Display options and perform operations until the user decides to exit.
  while (again == "y" || again == "Y") {
    print("Enter Options");
    print("1- Add element\n2- Update values\n3- Remove value\n4- Search for element\n5- Show list");

    // Read the user's selected option.
    int? option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      // Option 1: Add elements to the list.
      print("Enter size of list: ");
      int? size = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < size; i++) {
        myList.add(int.parse(stdin.readLineSync()!));
      }
    } else if (option == 2) {
      // Option 2: Update values in the list.
      print("Enter value you want to update: ");
      int val = int.parse(stdin.readLineSync()!);
      bool ans = myList.contains(val);
      if (ans == false) {
        print("Not found");
      } else {
        int index = myList.indexOf(val);
        print("Enter a new value");
        int new_val = int.parse(stdin.readLineSync()!);
        myList[index] = new_val;
      }
    } else if (option == 3) {
      // Option 3: Remove values from the list.
      print("1- Remove by element\n2- Remove by index\n");
      int removeOption = int.parse(stdin.readLineSync()!);
      if (removeOption == 1) {
        // Remove by element value.
        int val = int.parse(stdin.readLineSync()!);
        bool ans = myList.contains(val);
        if (ans == true)
          myList.remove(int.parse(stdin.readLineSync()!));
        else
          print("Not found");
      } else if (removeOption == 2) {
        // Remove by index.
        int index = int.parse(stdin.readLineSync()!);
        if (index < myList.length)
          myList.removeAt(index);
      }
    } else if (option == 4) {
      // Option 4: Search for an element in the list.
      print("Enter value you want to search: ");
      int val = int.parse(stdin.readLineSync()!);
      bool ans = myList.contains(val);
      if (ans == false)
        print("Not found");
      else
        print("Found");
    } else if (option == 5) {
      // Option 5: Show the current state of the list.
      print(myList);
    }

    // Ask the user if they want to perform another operation.
    print("Do you want to perform another operation? Enter 'y' or 'n': ");
    again = stdin.readLineSync()!;
  }
}
