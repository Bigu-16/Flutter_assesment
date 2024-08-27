import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/feature/grocery/presentation/widgets/card_build.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 5,
                          )
                        ]),
                    child: CircleAvatar(
                      radius: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/image.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Burger',
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(99, 255, 255, 255),
                    borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: 'Search',
                      suffixIcon: IconButton(
                          onPressed: () {
                            debugPrint('Filter pressed');
                          },
                          icon: Icon(Icons.filter_list))),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10.0, // Spacing between columns
                    mainAxisSpacing: 10.0, // Spacing between rows
                    childAspectRatio: 0.7, // Adjust the ratio to fit the content
                  ),
                  itemCount: 10, // Replace with the actual number of products
                  itemBuilder: (context, index) {
                    return CardBuild();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
