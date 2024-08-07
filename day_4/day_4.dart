import 'dart:io';

void main() {
// Hint the user to input first name
  print("Enter Your First Name");

  //Takes in first name as input
  var firstName = stdin.readLineSync();

// Hint the user to input last name
  print("Enter Your Last Name");

//Takes in last name as input
  var lastName = stdin.readLineSync();

//  Prints the first and last name
  print('$firstName $lastName');
}
