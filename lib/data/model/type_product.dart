import '../../domain/entity/type_product_entity.dart';

class Type_product extends Type_productEntity {
late int id;
final String name_type_product;


  Type_product(this.id, this.name_type_product)
      : super(id, name_type_product);

  Map<String, dynamic> toMap() => {
        'id': id,
        'name_type_product': name_type_product,
       
      };

  factory Type_product.toFromMap(Map<String, dynamic> json) => Type_product(
    json['id'],
    json['name_type_product']);
}


