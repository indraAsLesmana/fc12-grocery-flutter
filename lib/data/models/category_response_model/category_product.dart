import 'dart:convert';

class CategoryProduct {
  int? id;
  String? name;
  String? description;
  String? image;
  DateTime? createdAt;
  DateTime? updatedAt;

  CategoryProduct({
    this.id,
    this.name,
    this.description,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  @override
  String toString() {
    return 'Category(id: $id, name: $name, description: $description, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  factory CategoryProduct.fromMap(Map<String, dynamic> data) => CategoryProduct(
        id: data['id'] as int?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
        createdAt: data['created_at'] == null
            ? null
            : DateTime.parse(data['created_at'] as String),
        updatedAt: data['updated_at'] == null
            ? null
            : DateTime.parse(data['updated_at'] as String),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'description': description,
        'image': image,
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CategoryProduct].
  factory CategoryProduct.fromJson(String data) {
    return CategoryProduct.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CategoryProduct] to a JSON string.
  String toJson() => json.encode(toMap());
}
