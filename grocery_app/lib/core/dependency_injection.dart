import 'package:get_it/get_it.dart';
import 'package:grocery_app/core/platform/network_info.dart';
import 'package:grocery_app/feature/grocery/data/data_source/product_remote_data_source.dart';
import 'package:grocery_app/feature/grocery/data/repository/product_repository_impl.dart';
import 'package:grocery_app/feature/grocery/domain/reposotory/product_repository.dart';
import 'package:grocery_app/feature/grocery/domain/usecase/get_all_products.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/home_page_bloc/home_page_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

final getIt = GetIt.instance;

Future<void> setup() async{
  var internetChechker = InternetConnectionChecker();
  var client = http.Client();


  getIt.registerSingleton<InternetConnectionChecker>(internetChechker);
  getIt.registerFactory<NetworkInfo>(() => NetworkInfoImpl(internetChechker));


  getIt.registerLazySingleton<ProductRemoteDataSource>(() => ProductRemoteDataSourceImpl(client));
  getIt.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(getIt(),getIt()));

  //usecase
  getIt.registerLazySingleton<GetAllProducts>(() => GetAllProducts(getIt()));

  //bloc
  getIt.registerLazySingleton<HomePageBloc>(() => HomePageBloc(getIt()));
  
}