/*void main() {
List<String> names = ["John", "James", "Peter"];
print("Value of names is $names");
print("Value of names[0] is ${names[0]}"); // index 0
print("Value of names[1] is ${names[1]}"); 
print("Value of names[2] is ${names[2]}"); 

 
print(names);
}*/
void main() {
  
  List cars = ["BMW", "BENZ", "AUDI", "TOYOTA"];

  //  anonymous function as a parameter
  cars.forEach((car) {
    print(car); 
  });
}
