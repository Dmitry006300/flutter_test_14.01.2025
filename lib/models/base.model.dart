abstract class BaseModel {
  final String id;
  final bool deleted;
  final DateTime createdAt, updatedAt;

  BaseModel({
    required this.id,
    this.deleted = false,
    required this.createdAt,
    required this.updatedAt,
  });
}
