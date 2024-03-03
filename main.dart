// Task 1
int addTwo(int a, int b) {
  return a + b;
}

// Task 2
int subtractTwo(int a, int b) {
  return a - b;
}

// Task 3
int multiplyTwo(int a, int b) {
  return a * b;
}

// Task 4
double divideTwo(double a, double b) {
  if (b != 0) {
    return a / b;
  } else {
    throw ArgumentError('Cannot divide by zero');
  }
}

// Task 5
int stringLength(String str) {
  return str.length;
}

// Task 6
dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  } else {
    throw ArgumentError('List is empty');
  }
}

void main() {
  // Test cases
  print('Task 1: ${addTwo(5, 3)}'); // Expected output: 8
  print('Task 2: ${subtractTwo(5, 3)}'); // Expected output: 2
  print('Task 3: ${multiplyTwo(5, 3)}'); // Expected output: 15
  print('Task 4: ${divideTwo(10, 2)}'); // Expected output: 5.0
  print('Task 5: ${stringLength("Hello")}'); // Expected output: 5
  print('Task 6: ${getFirstElement([1, 2, 3])}'); // Expected output: 1
}
