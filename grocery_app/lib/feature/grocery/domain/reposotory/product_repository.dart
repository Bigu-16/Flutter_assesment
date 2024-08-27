import 'package:dartz/dartz.dart';
import 'package:grocery_app/core/error/failure.dart';
import 'package:grocery_app/feature/grocery/data/models/product_mode.dart';
import 'package:grocery_app/feature/grocery/domain/entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure,List<FoodProductEntity>>> getAllProducts();
}