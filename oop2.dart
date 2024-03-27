class Student {
  String name;
  int age;
  int gradeLevel;

  // Constructor to initialize student data
  Student(this.name, this.age, this.gradeLevel);

  // Method to print student information
  void printInfo() {
    print("Student Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  // Constructor to initialize teacher data
  Teacher(this.name, this.age, this.subject);

  // Method to print teacher information
  void printInfo() {
    print("Teacher Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

class School {
  void run() {
    // Create student and teacher objects
    Student student1 = Student("Dennis", 21, 11);
    Teacher teacher1 = Teacher("Mr. Stanley Munga", 42, "Dart");

    // Print student information
    print("Student Information:");
    student1.printInfo();
    print(""); // Empty line for separation

    // Print teacher information
    print("Teacher Information:");
    teacher1.printInfo();
  }
}

void main() {
  // Create an instance of the School class and run its methods
  School school = School();
  school.run();
}
