import '../../domain/entity/warehouse_entity.dart';

class Warehouse extends WarehouseEntity {
  late int id;
  final String address;
  final int quantity_product;
  final int id_product;

  Warehouse(this.id, this.address, this.quantity_product, this.id_product)
      : super(id, address, quantity_product, id_product);

  Map<String, dynamic> toMap() => {
        'id': id,
        'address': address,
        'quantity_product': quantity_product,
        'id_product': id_product,
      
      };

  factory Warehouse.toFromMap(Map<String, dynamic> json) => Warehouse(json['id'],
      json['address'], json['quantity_product'], json['id_product']);
}


