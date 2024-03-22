import 'dart:io';

// Animal class
class Animal {
  String name;
  String species;

  Animal(this.name, this.species);
}

// SoundMaker interface
abstract class SoundMaker {
  void makeSound();
}

// Dog class (inherits from Animal and implements SoundMaker)
class Dog extends Animal implements SoundMaker {
  Dog(String name, String species) : super(name, species);

  @override
  void makeSound() {
    print('$name barks!');
  }
}

void main() {
  // Read animal data from a file 
  final List<Dog> dogs = loadDogsFromFile("animals.txt");
  // Initialize Dog instances with the data

  final dog1 = Dog('Buddy', 'Golden Retriever');

  // Demonstrate the use of a loop
  for (final dog in dogs) {
    dog.makeSound();
  }
}

// Function to load dog data from a file
List<Dog> loadDogsFromFile(String filename) {
  List<Dog> dogs = [];
  try {
    File file = File(filename);
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      List<String> data = line.split(",");
      if (data.length == 2) {
        String name = data[0];
        String species = data[1];
        Dog dog = Dog(name, species);
        dogs.add(dog);
      }
    }
  } catch (e) {
    print("Error loading dogs from file: $e");
  }
  return dogs;
}
