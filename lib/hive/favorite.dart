import 'package:hive/hive.dart';

part 'favorite.g.dart';

@HiveType(typeId: 0)
class Favorite {
  @HiveField(0)
  final int productId;
  
  Favorite(this.productId);
}

