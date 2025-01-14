abstract class ProductEvent {}

class ShiftFavoriteEvent extends ProductEvent {
  final int index;
  ShiftFavoriteEvent(this.index);
}