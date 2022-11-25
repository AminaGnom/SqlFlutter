import '../../domain/entity/employee_entity.dart';

class Employee extends EmployeeEntity {
  late int id;
  final String name;
  final String surname;
  final String patronymic;
  final String address_employee;
  final DateTime birth;
  final double salary;
  final int id_post;
  final int id_user;

  Employee(this.id, this.name, this.surname, this.patronymic, this.address_employee, this.birth, this.salary, this.id_post, this.id_user)
      : super(id, name, surname, patronymic, address_employee, birth, salary, id_post, id_user);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'surname': surname,
        'patronymic': patronymic,
        'address_employee': address_employee,
        'birth': birth,
        'salary': salary,
        'id_post': id_post,
        'id_user': id_user,
      };

  factory Employee.toFromMap(Map<String, dynamic> json) => Employee(json['id'],
      json['name'], json['surname'], json['patronymic'], json['address_employee'], json['birth'], json['salary'], json['id_post'], json['id_user']);
}
