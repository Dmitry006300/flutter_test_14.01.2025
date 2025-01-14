import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_project_14012025/data/product_list.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_event.dart';
import 'package:flutter_test_project_14012025/pages/bloc/my_home_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc()
      : super(ProductState(
          products: Data.instance.products,
          favoriteIndices: {},
        )) {
    on<ShiftFavoriteEvent>(_onShiftFavorite);
  }

  void _onShiftFavorite(ShiftFavoriteEvent event, Emitter<ProductState> emit) {
    final updatedFavorites = Set<int>.from(state.favoriteIndices);
    if (updatedFavorites.contains(event.index)) {
      updatedFavorites.remove(event.index);
    } else {
      updatedFavorites.add(event.index);
    }
    emit(state.copyWith(favoriteIndices: updatedFavorites));
  }
}
