import '../../domain/entity/user_entity.dart';

class User extends UserEntity {
  late int id;
  final String login;
  final String password;
  final int id_role;

  User(this.id, this.login, this.password, this.id_role)
      : super(id, login, password, id_role);

  Map<String, dynamic> toMap() => {
        'id': id,
        'login': login,
        'password': password,
        'date_at': id_role,
      };

  factory User.toFromMap(Map<String, dynamic> json) => User(
    json['id'],
    json['login'], 
    json['password'],
    json['id_role']);
}
