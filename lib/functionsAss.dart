// Task 1: Function to add two numbers
int add(int a, int b) {
  return a + b;
}

// Task 2: Function to subtract two numbers
int subtract(int a, int b) {
  return a - b;
}

// Task 3: Function to multiply two numbers
int multiply(int a, int b) {
  return a * b;
}

// Task 4: Function to divide two numbers
double divide(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    throw Exception('Cannot divide by zero');
  }
}

// Task 5: Function to get the length of a string
int stringLength(String str) {
  return str.length;
}

// Task 6: Function to get the first element of a list
dynamic getFirstElement(List<dynamic> list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    throw Exception('List is empty');
  }
}

void main() {
 
  print('Task 1: Add Two Numbers: ${add(5, 3)}'); 
  print('Task 2: Subtract Two Numbers: ${subtract(8, 3)}'); 
  print('Task 3: Multiply Two Numbers: ${multiply(4, 6)}'); 

  try {
    print('Task 4: Divide Two Numbers: ${divide(10, 2)}'); 
    print('Task 4: Divide By Zero: ${divide(10, 0)}'); //  throw an exception
  } catch (e) {
    print('Task 4: Error - ${e.toString()}');
  }

  print('Task 5: String Length: ${stringLength("Hello")}'); 

  try {
    print('Task 6: Get First Element: ${getFirstElement([1, 2, 3, 4, 5])}'); // 
    print('Task 6: Get First Element of Empty List: ${getFirstElement([])}'); //  throw an exception
  } catch (e) {
    print('Task 6: Error - ${e.toString()}');
  }
}
