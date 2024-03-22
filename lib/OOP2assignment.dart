class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

class School {
  Student? student;
  Teacher? teacher;

  void createStudent(String name, int age, int gradeLevel) {
    student = Student(name, age, gradeLevel);
  }

  void createTeacher(String name, int age, String subject) {
    teacher = Teacher(name, age, subject);
  }

  void printStudentInfo() {
    
      student!.printInfo();
    
  }

  void printTeacherInfo() {
    
      teacher!.printInfo();
  
  }
}

void main() {
  var school = School();
  school.createStudent('Alice', 15, 10);
  school.createTeacher('Mr. Smith', 35, 'Mathematics');

  school.printStudentInfo();
  school.printTeacherInfo();
}
