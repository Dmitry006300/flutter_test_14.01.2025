import 'package:flutter/material.dart';

class ProductCell extends StatelessWidget {
  final String name;
  final double price;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  const ProductCell({
    Key? key,
    required this.name,
    required this.price,
    this.isFavorite = false,
    this.onFavoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          title: Text(
            name,
            style: const TextStyle(fontSize: 18.0),
          ),
          subtitle: Text(
            '${price.toStringAsFixed(2)} руб.',
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: isFavorite != null
              ? IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: isFavorite ? Colors.red : Colors.grey,
                  ),
                  onPressed: onFavoriteToggle,
                )
              : null,
        ),
      ),
    );
  }
}
