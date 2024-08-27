import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/core/dependency_injection.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/counter_bloc/counter_bloc.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/home_page_bloc/home_page_bloc.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/home_page_bloc/home_page_event.dart';
import 'package:grocery_app/feature/grocery/presentation/pages/details_page.dart';
import 'package:grocery_app/feature/grocery/presentation/pages/home_page.dart';
import 'package:grocery_app/feature/grocery/presentation/pages/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider<HomePageBloc>(create: (BuildContext context) => getIt.get<HomePageBloc>()..add(FetchData())),
      BlocProvider<CounterBloc>(create: (BuildContext context) => CounterBloc()),
    ], child: Root())
  );
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),

      routes: {
        '/login_page' : (context) => DetailsPage(),
        '/home_page' : (context) => HomePage(),
      },
    );
  }
}
