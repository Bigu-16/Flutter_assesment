import 'package:equatable/equatable.dart';

class FoodProductEntity extends Equatable {
  final String id;
  final String title;
  final String imageUrl;
  final double rating;
  final double price;
  final double discount;
  final String description;
  final List<FoodOption> options;

  // Positional parameters
  FoodProductEntity(
    this.id,
    this.title,
    this.imageUrl,
    this.rating,
    this.price,
    this.discount,
    this.description,
    this.options,
  );

  @override
  List<Object> get props => [
        id,
        title,
        imageUrl,
        rating,
        price,
        discount,
        description,
        options
      ];
}

class FoodOption extends Equatable {
  final String id;
  final String name;
  final double price;

  // Positional parameters
  FoodOption(
    this.id,
    this.name,
    this.price,
  );

  @override
  List<Object> get props => [id, name, price];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
    };
  }

  
  
}
