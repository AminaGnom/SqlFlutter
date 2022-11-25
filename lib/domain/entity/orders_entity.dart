class OrdersEntity {
  late int id;
  final int quantity_pr;
  final double price;
  final DateTime date;
  final int id_product;
  final int id_employee;
  final int id_byer;

  OrdersEntity(this.id, this.quantity_pr, this.price, this.date,this.id_product, this.id_employee, this.id_byer);
}
