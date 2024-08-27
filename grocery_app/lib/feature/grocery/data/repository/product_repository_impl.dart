import 'package:dartz/dartz.dart';
import 'package:grocery_app/core/error/exception.dart';
import 'package:grocery_app/core/error/failure.dart';
import 'package:grocery_app/core/platform/network_info.dart';
import 'package:grocery_app/feature/grocery/data/data_source/product_remote_data_source.dart';
import 'package:grocery_app/feature/grocery/data/models/product_mode.dart';
import 'package:grocery_app/feature/grocery/domain/entities/product.dart';
import 'package:grocery_app/feature/grocery/domain/reposotory/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  late final ProductRemoteDataSource productRemoteDataSource;
  late final NetworkInfo networkInfo;

  ProductRepositoryImpl(this.productRemoteDataSource,this.networkInfo);

  @override
  Future<Either<Failure, List<FoodProductModel>>> getAllProducts() async {
    if (await networkInfo.isConnected){
      try {
      final result = await productRemoteDataSource.getAllProducts();

      // final prouducts = result.map((model) => model.toModel()).toList();
      // return Right(prouducts);
    } on ServerException {
      return Left(ServerFailure('An error has occured while fetching'));
    }
    }
    return Left(ServerFailure(''));
  }
}
