class ProviderEntity{
   late int id;
  final String name_provider;
  final String surname_provider;
  final String patronymic_provider;
  final String address_office;
  final int inn;
  final int bank_number;

  ProviderEntity(this.id, this.name_provider, this.surname_provider, this.patronymic_provider, this.inn,this.address_office, this.bank_number);
}