import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/counter_bloc/counter_bloc.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/counter_bloc/counter_event.dart';
import 'package:grocery_app/feature/grocery/presentation/Bloc/counter_bloc/counter_state.dart';
import 'package:grocery_app/feature/grocery/presentation/widgets/chech_box.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Flexible(
            child: Column(
              children: [
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Image(
                          image: AssetImage('asset/image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 205, 205,
                                205), // Set the background to transparent
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20,
                        bottom: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                            color: Color.fromARGB(255, 255, 99, 71),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chicken Burger',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 22),
                      ),
                      Text(
                        '\$600',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 99, 71)),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text(
                            '(4.9)',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                debugPrint('text pressed');
                              },
                              child: Text(
                                'See all review',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 105, 112, 121)),
                              ))
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'this is the decription',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 105, 112, 121)),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                            onPressed: () {
                              debugPrint('text pressed');
                            },
                            child: Text(
                              'See all review',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 105, 112, 121)),
                            )),
                      ),
                      Text('Additional options:'),
                      Row(
                        children: [
                          Text('Add Cheese'),
                          Spacer(),
                          Text('+ \$0.50'),
                          MyCheckboxWidget(),
                        ],
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(20)),
                                child: IconButton(
                                    onPressed: () {
                                      context
                                          .read<CounterBloc>()
                                          .add(DecreaseCounter());
                                    },
                                    icon: Icon(Icons.remove))),
                            BlocBuilder<CounterBloc, CounterState>(
                              builder: (context, state) {
                                return Text('${state.counter}');
                              },
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(20)),
                              child: IconButton(
                                  onPressed: () {
                                    context
                                        .read<CounterBloc>()
                                        .add(IncreaseCounter());
                                  },
                                  icon: Icon(Icons.add)),
                            ),
                            Spacer(),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(150, 45),
                                  backgroundColor:
                                      const Color.fromARGB(255, 255, 99, 71),
                                ),
                                onPressed: () {
                                  debugPrint('add to cart pressed');
                                },
                                child: Row(
                                  children: [Icon(Icons.shopping_bag_rounded, color: Colors.white),
                                  Text('Add to Basket', style: TextStyle(color: Colors.white)),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
