int findLargest(List<int> numbers) {
  int largest = numbers[0];
  for (int number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}

void main() {
  List<int> numbers = [3, 7, 2, 10, 5];
  print('The largest number is: ${findLargest(numbers)}'); 
}
