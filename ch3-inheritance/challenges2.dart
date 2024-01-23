void main() {
  final jessie = Student('jessie', 'kane', [Role.studentUnion]);
  final weka = Student('mahmoud', 'alwakeel', [Role.athelete]);
  final ahmed = Student('ahmed', 'aly', [Role.bandMember]);

  displayStudentInfo(jessie);
  displayStudentInfo(weka);
  displayStudentInfo(ahmed);
}

enum Role{athelete, bandMember, studentUnion}

class Person {
  Person(this.name, this.lastName);

  String name;
  String lastName;

  String get fullName => '$name, $lastName';

  @override
  String toString() => fullName;
}
class Student extends Person {
  Student(super.name, super.lastName, this.roles);

  List<Role>? roles;
}

void displayStudentInfo(Student student) {
  print('Student: ${student.fullName}');
  print('Roles: ${student.roles}');
  print('-------------');
}