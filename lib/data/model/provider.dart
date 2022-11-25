import '../../domain/entity/provider_entity.dart';

class Provider extends ProviderEntity {
  late int id;
  final String name_provider;
  final String surname_provider;
  final String patronymic_provider;
  final String address_office;
  final int inn;
  final int bank_number;

  Provider(this.id, this.name_provider, this.surname_provider, this.patronymic_provider, this.inn,this.address_office, this.bank_number)
      : super(id, name_provider, surname_provider, patronymic_provider, inn, address_office, bank_number);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name_provider': name_provider,
        'surname_provider': surname_provider,
        'patronymic_provider': patronymic_provider,
        'inn': inn,
        'address_office': address_office,
        'bank_number': bank_number
      };

  factory Provider.toFromMap(Map<String, dynamic> json) => Provider(
      json['id'], 
      json['name_provider'], 
      json['surname_provider'], 
      json['patronymic_provider'],
      json['inn'], 
      json['address_office'], 
      json['bank_number']);
}
