import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_bloc.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_state.dart';

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
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 6.0,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16.0),
                    title: Text(product.name, style: const TextStyle(fontSize: 18.0)),
                    subtitle: Text(
                      '${product.price.toStringAsFixed(2)} руб.',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
