// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:grocery_app/feature/grocery/domain/entities/product.dart';

// class CardBuilder extends StatelessWidget {
//   final List<Product> products;
//   const CardBuilder({super.key, required this.products});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: products.map((product) {
//           return Card(
//             clipBehavior: Clip.antiAlias,
//             child: GestureDetector(
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => DetailsPage(product: product)));
//                 debugPrint('card pressed');
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                   color: Colors.white,
//                 )),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     AspectRatio(
//                       aspectRatio: 16 / 9,
//                       child: Image.network(
//                         product.imageUrl,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: Column(
//                           children: <Widget>[
//                             Row(
//                               children: <Widget>[
//                                 Text(
//                                   product.name,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   '\$${product.price}',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Text(
//                                   'Category',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w100,
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.yellow,
//                                   size: 20,
//                                 ),
//                                 Text(
//                                   product.rating.toString(),
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w100,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:grocery_app/feature/grocery/domain/entities/product.dart';

// class CardBuilder extends StatelessWidget {
//   const CardBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//         // products.map((product) {
//           // return 
//           Card(
//             clipBehavior: Clip.antiAlias,
//             child: GestureDetector(
//               onTap: () {
//                 // Navigator.push(
//                 //     context,
//                 //     MaterialPageRoute(
//                 //         builder: (context) => DetailsPage(product: product)));
//                 debugPrint('card pressed');
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     border: Border.all(
//                   color: Colors.white,
//                 )),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     AspectRatio(
//                       aspectRatio: 16 / 9,
//                       // child: Image.network(
//                       //   product.imageUrl,
//                       //   fit: BoxFit.cover,
//                       // ),
//                       child: Image(image: AssetImage('asset/image.png')),
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: Column(
//                           children: <Widget>[
//                             Row(
//                               children: <Widget>[
//                                 Text(
//                                   product.name,
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 18,
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Text(
//                                   '\$${product.price}',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Row(
//                               children: <Widget>[
//                                 Text(
//                                   'Category',
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w100,
//                                   ),
//                                 ),
//                                 Spacer(),
//                                 Icon(
//                                   Icons.star,
//                                   color: Colors.yellow,
//                                   size: 20,
//                                 ),
//                                 Text(
//                                   product.rating.toString(),
//                                   style: TextStyle(
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w100,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         // }).toList(),

//         ]
//       ),
//     );
//   }
// }
