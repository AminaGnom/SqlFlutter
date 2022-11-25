import '../../domain/entity/orders_entity.dart';

class Orders extends OrdersEntity {
  late int id;
  final int quantity_pr;
  final double price;
  final DateTime date;
  final int id_product;
  final int id_employee;
  final int id_byer;

  Orders(this.id, this.quantity_pr, this.price, this.date,this.id_product, this.id_employee, this.id_byer)
      : super(id, quantity_pr, price, date, id_product, id_employee, id_byer);

  Map<String, dynamic> toMap() => {
        'id': id,
        'quantity_pr': quantity_pr,
        'price': price,
        'date': date,
        'id_product': id_product,
        'id_employee': id_employee,
        'id_byer': id_byer,
      };

  factory Orders.toFromMap(Map<String, dynamic> json) => Orders(
      json['id'],
      json['quantity_pr'],
      json['price'],
      json['date'],
      json['id_product'],
      json['id_employee'],
      json['id_byer']);
}
