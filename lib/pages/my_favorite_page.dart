import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_bloc.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_state.dart';
import 'package:flutter_test_project_14012025/widgets/product_cell.dart';

class FavoriteProductsPage extends StatelessWidget {
  const FavoriteProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          final favoriteProducts = state.favoriteIndices
              .map((index) => state.products[index])
              .toList();

          if (favoriteProducts.isEmpty) {
            return const Center(
              child: Text('No favorites'),
            );
          }

          return ListView.builder(
            itemCount: favoriteProducts.length,
            itemBuilder: (context, index) {
              final product = favoriteProducts[index];
              return ProductCell(
                name: product.name,
                price: product.price,
              );
            },
          );
        },
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
