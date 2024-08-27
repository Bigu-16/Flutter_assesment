import 'package:grocery_app/feature/grocery/data/models/product_mode.dart';
import 'package:grocery_app/feature/grocery/domain/entities/product.dart';

class HomePageState {}

class FetchLoading extends HomePageState {}

class FetchSuccess extends HomePageState {
  late final List<FoodProductModel> products;
  FetchSuccess(this.products);
}

class FetchFailure extends HomePageState {
  late final String message;
  FetchFailure(this.message);
}
