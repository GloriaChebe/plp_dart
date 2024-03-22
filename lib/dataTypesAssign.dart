void main() {
  // 1. Integer : Represents whole numbers
  int age = 30;

  // 2. Double: Represents decimal numbers
  double weight = 65.5;

  // 3. String: Represents text
  String name = "John Doe";

  // 4. List: Represents a collection of objects of the same type
  List<String> animals = ["cow", "lion", "hyena"];

  // 5. Map: Represents a collection of key-value pairs
  Map<String, dynamic> person = {
    'name': 'Alice',
    'age': 25,
    'isStudent': true,
  };

  // Printing the values
  print('Age: $age'); // Integer
  print('Weight: $weight'); // Double
  print('Name: $name'); // String

  // Printing list elements
  print('Numbers: $animals'); // List
  print('First number: ${animals[0]}'); // Accessing  specific list element

  // Printing map elements
  print('Person: $person'); // Map
  print('Name: ${person['name']}'); // Accessing map value by key
  print('Age: ${person['age']}'); // Accessing map value by key
  print('Is Student: ${person['isStudent']}'); // Accessing map value by key
}
