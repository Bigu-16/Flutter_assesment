import 'package:dartz/dartz.dart';
import 'package:grocery_app/core/error/failure.dart';
import 'package:grocery_app/feature/grocery/data/models/product_mode.dart';
import 'package:grocery_app/feature/grocery/domain/entities/product.dart';
import 'package:grocery_app/feature/grocery/domain/reposotory/product_repository.dart';

class GetAllProducts{
  ProductRepository productRepository;

  GetAllProducts(this.productRepository);

  Future<Either<Failure,List<FoodProductEntity>>> call() async{
    return await productRepository.getAllProducts();
  }
}