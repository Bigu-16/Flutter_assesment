import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/feature/grocery/domain/usecase/get_all_products.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/home_page_bloc/home_page_event.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/home_page_bloc/home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final GetAllProducts getAllProducts;

  HomePageBloc(this.getAllProducts) : super(FetchLoading()) {
    on<FetchData>(
      (event, emit) async {
        emit(FetchLoading());
        try {
          final result = await getAllProducts();

          // result.fold((failure) => emit(FetchFailure(failure.message)),
          //     (products) => emit(FetchSuccess(products)));
        } catch (e) {
          emit(FetchFailure('Failed to fetch data'));
        }
      },
    );
  }
}
