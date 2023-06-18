// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ProductModel {
  final String? name;
  final String? longName;
  final List<String>? image;
  final int? price;
  late final double? rating;
  int? count;
  ProductModel({
    this.name,
    this.longName,
    this.image,
    this.price,
    this.rating,
    this.count,
  });

  ProductModel copyWith({
    String? name,
    String? longName,
    List<String>? image,
    int? price,
    double? rating,
    int? count,
  }) {
    return ProductModel(
      name: name ?? this.name,
      longName: longName ?? this.longName,
      image: image ?? this.image,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      count: count ?? this.count,
    );
  }
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'longName': longName,
      'image': image,
      'price': price,
      'rating': rating,
      'count': count,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] != null ? map['name'] as String : null,
      longName: map['longName'] != null ? map['longName'] as String : null,
      image: map['image'] != null ? List<String>.from((map['image'] as List<String>) ): null,
      price: map['price'] != null ? map['price'] as int : null,
      rating: map['rating'] != null ? map['rating'] as double : null,
      count: map['count'] != null ? map['count'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(name: $name, longName: $longName, image: $image, price: $price, rating: $rating, count: $count)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.longName == longName &&
      listEquals(other.image, image) &&
      other.price == price &&
      other.rating == rating &&
      other.count == count;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      longName.hashCode ^
      image.hashCode ^
      price.hashCode ^
      rating.hashCode ^
      count.hashCode;
  }
}
