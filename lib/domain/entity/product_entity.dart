import 'dart:ffi';

class ProductEntity {
  late int id;
  final String title;
  final String manufacturer;
  final double price;
  final int id_provider;
  final int id_type_product;

  ProductEntity(this.id, this.title, this.manufacturer, this.price, this.id_provider, this.id_type_product);
}
