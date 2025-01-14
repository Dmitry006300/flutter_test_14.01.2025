import 'package:flutter_test_project_14012025/models/product.model.dart';

class Data {

  final List<ProductModel> products = [
    ProductModel(id: '1', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Молоко', price: 100),
    ProductModel(id: '2', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Кефир', price: 50),
    ProductModel(id: '3', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Апельсины', price: 250),
    ProductModel(id: '4', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Виноград', price: 500),
    ProductModel(id: '5', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Яйца', price: 200),
    ProductModel(id: '6', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Манго', price: 150),
    ProductModel(id: '7', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Клубника', price: 700),
    ProductModel(id: '8', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Черника', price: 600),
    ProductModel(id: '9', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Малина', price: 500),
    ProductModel(id: '10', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Голубика', price: 400),
    ProductModel(id: '11', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Яблоки', price: 300),
    ProductModel(id: '12', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Груши', price: 250),
    ProductModel(id: '13', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Киви', price: 500),
    ProductModel(id: '14', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Тыква', price: 600),
    ProductModel(id: '15', createdAt: DateTime.now(), updatedAt: DateTime.now(), name: 'Орехи', price: 800),
  ];

  Data._privateConstructor();
  static final Data _instance = Data._privateConstructor();
  static Data get instance => _instance;

}
