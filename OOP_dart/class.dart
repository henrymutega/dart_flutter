//Teacher class
class Teacher {
  String name;
  int age;
  String subjectTaught;

  Teacher(this.name, this.age, this.subjectTaught);

  void displayTeacherInfo() {
    print("$name is $age years old. Teaches $subjectTaught");
  }
}

//Student class
class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void displayStudentInfo() {
    print("$name is $age years old. Currently in grade $gradeLevel");
  }
}

void main() {
  var student1 = Student("Mercy Wambui", 9, 5);
  var teacher1 = Teacher("James Otis", 24, "English");

  student1.displayStudentInfo();
  teacher1.displayTeacherInfo();
}
