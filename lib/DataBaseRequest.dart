
abstract class DataBaseRequest {
  static String deleteTable(String table) => 'DROP TABLE $table';

  static const String tableByer = 'Byer';
  static const String tableOrders = 'Orders';
  static const String tablePost = 'Post';
  static const String tableEmployee = "Employee";
  static const String tableProduct = "Product";
  static const String tableProvider = "Provider";
  static const String tableRole = "Role";
  static const String tableType_product = "Type_product";
  static const String tableUser = "User";
  static const String tableWarehouse = "Warehouse";

  static const List<String> tableList = [
    tableByer,
    tableOrders,
    tablePost,
    tableEmployee,
    tableProduct,
    tableProvider,
    tableRole,
    tableType_product,
    tableUser,
    tableWarehouse
  ];
  static const List<String> tableCreateList = [
    _createTableByer,
    _createTableOrders,
    _createTablePost,
    _createTableEmployee,
    _createTableProduct,
    _createTableProvider,
    _createTableRole,
    _createTableType_product,
    _createTableUser,
    _createTableWarehouse
  ];
  static const String _createTableByer = "create table Byer("
      "id int primary key not null,"
      "name_byer text,"
      "surname_byer text,"
      "strpatronymic_byereet text,"
      "address_byer text,"
      "foreign key (id_user) references User(id)"
      ");";

  static const String _createTableOrders = "create table Orders("
      "id int primary key not null,"
      "quantity_pr int,"
      "price decimal(38, 2),"
      "date date,"
      "foreign key (id_product) references Product(id),"
      "foreign key (id_employee) references Employee(id),"
      "foreign key (id_byer) references Byer(id)"
      ");";

  static const String _createTablePost = "create table Post("
      "id int primary key not null,"
      "name_post text"
      ");";

  static const String _createTableEmployee = "create table Employee("
      "id int primary key not null,"
      "name text,"
      "surname text,"
      "patronymic text,"
      "address_employee text,"
      "birth date,"
      "salary decimal(38, 2),"
      "foreign key (id_post) references Post(id),"
      "foreign key (id_user) references User(id)"
      ");";

  static const String _createTableProduct = "create table Product("
      "id int primary key not null,"
      "title text,"
      "manufacturer text,"
      "price decimal(38, 2),"
      "foreign key (id_provider) references Provider(id),"
      "foreign key (id_type_product) references Type_product(id)"
      ");";

  static const String _createTableProvider = "create table Furniture("
      "id int primary key not null,"
      "name_provider text,"
      "surname_provider text,"
      "patronymic_provider text,"
      "address_office text,"
      "inn int,"
      "bank_number int"
      ");";

  static const String _createTableRole = "create table Role("
      "id int primary key not null,"
      "name_role text"
      ");";

  static const String _createTableType_product = "create table Type_product("
      "id int primary key not null,"
      "name_type_product text"
      ");";

  static const String _createTableUser = "create table User("
      "id int primary key not null,"
      "login text,"
      "password text,"
      "foreign key (id_role) references Role(id)"
      ");";

  static const String _createTableWarehouse = "create table Warehouse("
      "id int primary key not null,"
      "address text,"
      "quantity_product int,"
      "foreign key (id_product) references Product(id)"
      ");";
}
