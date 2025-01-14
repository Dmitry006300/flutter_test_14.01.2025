import 'package:flutter_test_project_14012025/models/product.model.dart';

class ProductState {
  final List<ProductModel> products;
  final Set<int> favoriteIndices;

  ProductState({
    required this.products, 
    required this.favoriteIndices});

  ProductState copyWith({
    List<ProductModel>? products,
    Set<int>? favoriteIndices,
  }) {
    return ProductState(
      products: products ?? this.products,
      favoriteIndices: favoriteIndices ?? this.favoriteIndices,
    );
  }
}
