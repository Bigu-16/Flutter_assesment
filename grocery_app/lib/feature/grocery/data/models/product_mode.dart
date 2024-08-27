import 'dart:convert';

import 'package:grocery_app/feature/grocery/domain/entities/product.dart';

class FoodProductModel extends FoodProductEntity {
  final String id;
  final String title;
  final String imageUrl;
  final double rating;
  final double price;
  final double discount;
  final String description;
  final List<FoodOptionModel> options;

  FoodProductModel(
    this.id,
    this.title,
    this.imageUrl,
    this.rating,
    this.price,
    this.discount,
    this.description,
    this.options,
  ) : super('', '', '', 0.0, 0.0, 0.0, '', []);

  factory FoodProductModel.fromJson(Map<String, dynamic> json) {
    return FoodProductModel(
      json['id'],
      json['title'],
      json['imageUrl'],
      (json['rating'] as num).toDouble(),
      (json['price'] as num).toDouble(),
      (json['discount'] as num).toDouble(),
      json['description'],
      (json['options'] as List<dynamic>)
          .map((option) => FoodOptionModel.fromJson(option))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'imageUrl': imageUrl,
      'rating': rating,
      'price': price,
      'discount': discount,
      'description': description,
      'options': options.map((option) => option.toJson()).toList(),
    };
  }
}

class FoodOptionModel extends FoodOption {
  FoodOptionModel(
    String id,
    String name,
    double price,
  ) : super(
          '','',0.0
        );

  factory FoodOptionModel.fromJson(Map<String, dynamic> json) {
    return FoodOptionModel(
      json['id'],
      json['name'],
      (json['price'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  
}
