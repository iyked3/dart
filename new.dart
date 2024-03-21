import 'dart:io';


abstract class Printable {
  void printDetails();
}


class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }
}

// Class representing a student, inheriting from Person and implementing Printable
class Student extends Person implements Printable {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  @override
  void printDetails() {
    print('Student: $name, Age: $age, Major: $major');
  }

  void study() {
    print('$name is studying.');
  }
}

// Class representing a teacher, inheriting from Person
class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);

  @override
  void greet() {
    print('Good day! I am $name, your $subject teacher.');
  }
}

// Method to read data from a file and create Student instances
List<Student> readStudentsFromFile(String fileName) {
  List<Student> students = [];

  try {
    File file = File(fileName);
    List<String> lines = file.readAsLinesSync();

    for (String line in lines) {
      List<String> parts = line.split(',');
      if (parts.length == 3) {
        String name = parts[0];
        int age = int.tryParse(parts[1]);
        String major = parts[2];
        if (age != null) {
          students.add(Student(name, age, major));
        }
      }
    }
  } catch (e) {
    print('Error reading file: $e');
  }

  return students;
}

void main() {
  // Creating instances of students from a file
  List<Student> students = readStudentsFromFile('students.txt');

  // Printing details of each student
  for (Student student in students) {
    student.printDetails();
  }

  // Using a loop to demonstrate studying
  for (Student student in students) {
    student.study();
  }

  // Creating an instance of a teacher
  Teacher teacher = Teacher('Mr. Smith', 35, 'Math');

  // Calling overridden method
  teacher.greet();
}
