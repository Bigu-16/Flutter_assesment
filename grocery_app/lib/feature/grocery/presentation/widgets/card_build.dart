import 'package:flutter/material.dart';
import 'package:grocery_app/feature/grocery/presentation/pages/details_page.dart';

class CardBuild extends StatefulWidget {
  const CardBuild({super.key});

  @override
  State<CardBuild> createState() => _CardBuildState();
}

class _CardBuildState extends State<CardBuild> {
  bool isFavorite = false; // Move isFavorite outside of build to maintain state

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the details page
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const DetailsPage(),
          ),
        );
      },
      child: Container(
        height: 150, // Shorter height for the card
        child: Card(
          margin: const EdgeInsets.all(8.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image and Icon inside a Stack
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        child: Image.asset(
                          'asset/image.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15), // Make the container round
                            ),
                            child: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_outline,
                              color: isFavorite ? Color.fromARGB(255, 255, 99, 71) : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8.0), // Spacing between image and text

                // Text and Rating below the image
                Text(
                  'Chicken Burger',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  '\$600',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 255, 99, 71),
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
