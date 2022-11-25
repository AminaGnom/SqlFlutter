import '../../domain/entity/role_entity.dart';

class Role extends RoleEntity {
  late int id;
  final String name_role;


  Role(this.id, this.name_role)
      : super(id, name_role);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name_role': name_role,
      };

  factory Role.toFromMap(Map<String, dynamic> json) =>
      Role(
        json['id'], 
        json['name_role']);
}
