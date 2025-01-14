import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_project_14012025/data/product_list.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_event.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_state.dart';
import 'package:hive/hive.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final Box<int> favoritesBox = Hive.box<int>('favorites');
  ProductBloc()
      : super(ProductState(
          products: Data.instance.products,
          favoriteIndices: Hive.box<int>('favorites').values.toSet(),
        )) {
    on<ShiftFavoriteEvent>(_onShiftFavorite);
  }

  void _onShiftFavorite(ShiftFavoriteEvent event, Emitter<ProductState> emit) {
    final updatedFavorites = Set<int>.from(state.favoriteIndices);
    if (updatedFavorites.contains(event.index)) {
      updatedFavorites.remove(event.index);
      favoritesBox.delete(event.index);
    } else {
      updatedFavorites.add(event.index);
      favoritesBox.put(event.index, event.index);
    }
    emit(state.copyWith(favoriteIndices: updatedFavorites));
  }
}
