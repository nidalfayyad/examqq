// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String name;
  num id;
  num price;
  String description;
  String image;
  String brand;
  num rating;
  String color;
  String connectivity;
  bool wireless;
  UserModel({
    required this.name,
    required this.id,
    required this.price,
    required this.description,
    required this.image,
    required this.brand,
    required this.rating,
    required this.color,
    required this.connectivity,
    required this.wireless,
  });

  UserModel copyWith({
    String? name,
    num? id,
    num? price,
    String? description,
    String? image,
    String? brand,
    num? rating,
    String? color,
    String? connectivity,
    bool? wireless,
  }) {
    return UserModel(
      name: name ?? this.name,
      id: id ?? this.id,
      price: price ?? this.price,
      description: description ?? this.description,
      image: image ?? this.image,
      brand: brand ?? this.brand,
      rating: rating ?? this.rating,
      color: color ?? this.color,
      connectivity: connectivity ?? this.connectivity,
      wireless: wireless ?? this.wireless,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'price': price,
      'description': description,
      'image': image,
      'brand': brand,
      'rating': rating,
      'color': color,
      'connectivity': connectivity,
      'wireless': wireless,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      id: map['id'] as num,
      price: map['price'] as num,
      description: map['description'] as String,
      image: map['image'] as String,
      brand: map['brand'] as String,
      rating: map['rating'] as num,
      color: map['color'] as String,
      connectivity: map['connectivity'] as String,
      wireless: map['wireless'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, id: $id, price: $price, description: $description, image: $image, brand: $brand, rating: $rating, color: $color, connectivity: $connectivity, wireless: $wireless)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.id == id &&
        other.price == price &&
        other.description == description &&
        other.image == image &&
        other.brand == brand &&
        other.rating == rating &&
        other.color == color &&
        other.connectivity == connectivity &&
        other.wireless == wireless;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        id.hashCode ^
        price.hashCode ^
        description.hashCode ^
        image.hashCode ^
        brand.hashCode ^
        rating.hashCode ^
        color.hashCode ^
        connectivity.hashCode ^
        wireless.hashCode;
  }
}
