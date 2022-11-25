import '../../domain/entity/product_entity.dart';

class Product extends ProductEntity {
  late int id;
  final String title;
  final String manufacturer;
  final double price;
  final int id_provider;
  final int id_type_product;

  Product(this.id, this.title, this.manufacturer, this.price, this.id_provider, this.id_type_product)
      : super(id, title, manufacturer, price, id_provider, id_type_product);

  Map<String, dynamic> toMap() => {
        'id': id,
        'title': title,
        'manufacturer': manufacturer,
        'price': price,
        'id_provider': id_provider,
        'id_type_product' : id_type_product,
      };

  factory Product.toFromMap(Map<String, dynamic> json) => Product(
      json['id'],
      json['title'],
      json['manufacturer'],
      json['price'],
      json['id_store'],
      json['id_type_product']);
}
