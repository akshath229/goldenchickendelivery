import 'package:flutter/material.dart';
import 'package:rms_delivery2/models/product.dart';


class Cart extends ChangeNotifier {
  List<Product> _products = [];

  dynamic _totalPrice = 0.0;

  void add(Product item) {
    _products.add(item);
    _totalPrice += item.price;
    notifyListeners();
  }

  void remove(Product item) {
    _totalPrice -= item.price;
    _products.remove(item);
    notifyListeners();
  }

  int get count {
    return _products.length;
  }

  dynamic get totalPrice {
    return _totalPrice;
  }

  List<Product> get cartItems {
    return _products;
  }}

//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
//
//
// import '../controllers/cartcontroller.dart';
// import '../screens/home/home_screen.dart';
//
// class Cartitems  extends StatelessWidget {
//   final CartController controller = Get.find();
//    Cartitems ({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.white,
//       elevation: 0,
//       title: Text(
//         "Your Cart",
//         style: GoogleFonts.kanit(
//           fontWeight: FontWeight.w600,
//           fontSize: 27,
//           color: Colors.black,
//         ),
//       ),
//       leading: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => HomeScreen()),
//           );
//         },
//         child: Icon(
//           Icons.arrow_back_ios_new,
//           color: Colors.black,
//         ),
//       ),
//     ),
//     body: SingleChildScrollView(
//       child: Padding(
//         padding: const EdgeInsets.only(top: 1, left: 20, right: 20),
//         child: Column(
//           children: [
//             Container(
//               height: 680,
//               width: double.maxFinite,
//               child: ListView.builder(
//                 itemCount: controller.products.length,
//                 itemBuilder: (context, index) {
//                   //final product = _products[index];
//                   return carttile();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//     floatingActionButton: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Container(
//           width: 150,
//           height: 50,
//           decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               borderRadius: BorderRadius.all(Radius.circular(35))),
//           child: FloatingActionButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => HomeScreen()),
//               );
//             },
//             backgroundColor: Colors.grey.shade200,
//             child: Container(
//               width: double.maxFinite,
//               height: 50,
//               decoration: BoxDecoration(
//                   color: Colors.grey.shade200,
//                   borderRadius: BorderRadius.all(Radius.circular(35))),
//               child: Center(
//                 child: Text(
//                   "Add more",
//                   style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.black),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           width: 150,
//           height: 50,
//           decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               borderRadius: BorderRadius.all(Radius.circular(35))),
//           child: FloatingActionButton(
//             onPressed: () {},
//             backgroundColor: Colors.grey.shade200,
//             child: Container(
//               decoration: BoxDecoration(
//                   color: Colors.grey.shade200,
//                   borderRadius: BorderRadius.all(Radius.circular(35))),
//               width: double.maxFinite,
//               height: 50,
//               child: Center(
//                 child: Text(
//                   "Order",
//                   style: GoogleFonts.bebasNeue(fontSize: 25, color: Colors.black),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//
//     );
//   }
// }
//
//
//
// class carttile extends StatelessWidget {
//   final int index;
//   const carttile({super.key,required this.index,});
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         height: 146,
//         width: double.maxFinite,
//         decoration: BoxDecoration(
//           color: Colors.grey.shade100,
//           borderRadius: BorderRadius.all(Radius.circular(35)),
//         ),
//         child: Container(
//           child: Container(
//             width: double.maxFinite,
//             height: 153,
//             child: Row(
//               children: [
//                 // image
//                 Container(
//                   height: 153,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(.imgUrl),
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(35),
//                       bottomLeft: Radius.circular(35),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 5),
//                 // text
//                 Expanded(
//                   child: Container(
//                     height: 153,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.only(
//                         bottomRight: Radius.circular(35),
//                         topRight: Radius.circular(35),
//                       ),
//                       color: Colors.grey.shade200,
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 13),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(height: 13),
//                           Text(
//                             widget.name,
//                             style: GoogleFonts.bebasNeue(fontSize: 25),
//                           ),
//                           SizedBox(height: 2),
//                           Text(
//                             "widget.controller,",
//                             style: GoogleFonts.bebasNeue(
//                                 color: Colors.grey, fontSize: 13),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 // "\₹ ${product.price}",
//                                 "",
//                                 style: GoogleFonts.kanit(),
//                               ),
//                               Container(
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.add),
//                                     ),
//                                     Text(
//                                       "2",
//                                       style: GoogleFonts.kanit(fontSize: 20),
//                                     ),
//                                     IconButton(
//                                       onPressed: () {},
//                                       icon: Icon(Icons.remove),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
