import '../../domain/entity/buyer_entity.dart';
import '../../domain/entity/buyer_entity.dart';

class Byer extends ByerEntity {
  late int id;
  final String name_byer;
  final String surname_byer;
  final String patronymic_byer;
  final String address_byer;
  final int id_user;

  Byer(this.id, this.name_byer, this.surname_byer, this.patronymic_byer, this.address_byer, this.id_user)
      : super(id, name_byer, surname_byer, patronymic_byer, address_byer, id_user);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name_byer': name_byer,
        'surname_byer': surname_byer,
        'patronymic_byer': patronymic_byer,
        'address_byer': address_byer,
        'id_user': id_user,
      };

  factory Byer.toFromMap(Map<String, dynamic> json) => Byer(
      json['id'],
      json['name_byer'],
      json['surname_byer'],
      json['patronymic_byer'],
      json['address_byer'],
      json['id_user']);
}
