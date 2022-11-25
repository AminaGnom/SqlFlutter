import 'dart:ffi';

class EmployeeEntity {
  late int id;
  final String name;
  final String surname;
  final String patronymic;
  final String address_employee;
  final DateTime birth;
  final double salary;
  final int id_post;
  final int id_user;

  EmployeeEntity(this.id, this.name, this.surname, this.patronymic, this.address_employee, this.birth, this.salary, this.id_post, this.id_user);
}
