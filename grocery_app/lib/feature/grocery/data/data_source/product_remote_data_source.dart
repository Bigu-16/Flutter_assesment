import 'dart:convert';

import 'package:grocery_app/core/constant/constants.dart';
import 'package:grocery_app/core/error/exception.dart';
import 'package:grocery_app/core/error/failure.dart';
import 'package:grocery_app/feature/grocery/data/models/product_mode.dart';
import 'package:http/http.dart' as http;

abstract class ProductRemoteDataSource {
  Future<List<FoodProductModel>> getAllProducts();
}

class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSourceImpl(this.client);

  @override
  Future<List<FoodProductModel>> getAllProducts() async {
    try {
      final response = await client.get(Uri.parse(Urls.baseUrl),
          headers: {'Content-Type': 'application/json'});

      if (response.statusCode == 200) {
        // final jsonList = json.decode(response.body);
        // return FoodProductModel.listFromJson(json.decode(response.body)['data']);
        return [FoodProductModel.fromJson(json.decode(response.body)['data'])];
      } else {
        throw ServerException('Failed to load product');
      }
    } catch (e) {
      throw ConnectionFailure('Network error: $e');
    }
  }
}
