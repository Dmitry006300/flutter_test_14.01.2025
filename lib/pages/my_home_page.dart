import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_event.dart';
import 'package:flutter_test_project_14012025/pages/my_favorite_page.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_bloc.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_state.dart';
import 'package:flutter_test_project_14012025/widgets/product_cell.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FavoriteProductsPage(),
                ),
              );
            },
          ),
          const SizedBox(width: 30),
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              final product = state.products[index];
              final isFavorite = state.favoriteIndices.contains(index);

              return ProductCell(
                name: product.name,
                price: product.price,
                isFavorite: isFavorite,
                onFavoriteToggle: () {
                  context.read<ProductBloc>().add(ShiftFavoriteEvent(index));
                },
              );
            },
          );
        },
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
