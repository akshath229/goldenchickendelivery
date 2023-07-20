// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
//
// import '../../../controllers/cartcontroller.dart';
//
// class CartListWidget extends StatelessWidget {
//   final CartController cartController = Get.find();
//
//
//   @override
//   Widget build(BuildContext context) {
//     int totalItems = cartController.getTotalItems();
//
//     return Obx(
//           () {
//         final cartProducts = cartController.getCartProducts();
//         return Scaffold(
//           body:
//
//           ListView.builder(
//             itemCount: cartProducts.length,
//             itemBuilder: (context, index) {
//               final food = cartProducts[index];
//               final int productQuantity = cartController.getProductQuantity(food);
//
//               return InkWell(
//                 onTap: () {
//
//                 },
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade100,
//                     boxShadow: [
//                       BoxShadow(
//                         blurRadius: 0,
//                         color: Colors.grey,
//                         offset: Offset(0, 1),
//                       )
//                     ],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(12),
//                             child: Image.asset(
//                               food.imgUrl,
//                               width: 70,
//                               height: 70,
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           food.name,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 22,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           food.desc,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           food.price1.toString(),
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           food.qty.toString(),
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           food.quantity.toString(),
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           'Total Items in Cart: $totalItems',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                         Text(
//                           'Quantity: $productQuantity',
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//
//
//
//                         GestureDetector(onTap: () {
//                           cartController.removeProduct(food);
//                         },
//                             child: Icon(Icons.delete))
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           )
//
//         );
//       },
//     );
//   }
// }
//
//
//
//
//
//
//
//
// //
// //
// // ListView.builder(
// // itemCount: cartProducts.length,
// // itemBuilder: (context, index) {
// // final food = cartProducts[index];
// // // final quantity = cartController._products[food] ?? 0;
// //
// // return ListTile(
// // leading: Image.asset(
// // food.imgUrl,
// // width: 40,
// // height: 40,
// // ),
// // title: Row(
// // children: [
// // Text(food.name),
// // Text(food.desc),
// // ],
// // ),
// //
// //
// // // subtitle: Text("Quantity: $quantity"),
// // );
// // },
// // ),
// //
// // import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// //
// // class YourListView extends StatefulWidget {
// //   @override
// //   _YourListViewState createState() => _YourListViewState();
// // }
// //
// // class _YourListViewState extends State<YourListView> {
// //   int count = 0;
// //   List<String> options = ['full', 'half']; // Add your options here
// //
// //   void incrementCount() {
// //     setState(() {
// //       count++;
// //     });
// //   }
// //
// //   void decrementCount() {
// //     if (count > 0) {
// //       setState(() {
// //         count--;
// //       });
// //     }
// //   }
// //
// //   List<Map<String, dynamic>> itemList = [
// //     {
// //       'itemName': 'Chicken Biriyani',
// //       'itemDescription': 'Aromatic rice and succulent chicken cooked with flavorful Indian spices.',
// //       'itemPrice': '₹180.00',
// //     },
// //     // Add more items as needed
// //   ];
// //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return ListView.builder(
// // //       itemCount: itemList.length,
// // //       itemBuilder: (context, index) {
// // //         return Container(
// // //           width: MediaQuery.of(context).size.width,
// // //           decoration: BoxDecoration(
// // //             color: Colors.grey.shade100,
// // //             boxShadow: [
// // //               BoxShadow(
// // //                 blurRadius: 0,
// //                 color: Colors.grey,
// //                 offset: Offset(0, 1),
// //               )
// //             ],
// //             borderRadius: BorderRadius.circular(20),
// //           ),
// //           child: Padding(
// //             padding: const EdgeInsets.all(8.0),
// //             child: Column(
// //               mainAxisSize: MainAxisSize.max,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Padding(
// //                   padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
// //                   child: Row(
// //                     mainAxisSize: MainAxisSize.max,
// //                     children: [
// //                       Padding(
// //                         padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
// //                         child: ClipRRect(
// //                           borderRadius: BorderRadius.circular(12),
// //                           child: Image.asset(
// //                             'lib/images/pngwing.com.png',
// //                             width: 70,
// //                             height: 70,
// //                             fit: BoxFit.contain,
// //                           ),
// //                         ),
// //                       ),
// //                       Expanded(
// //                         child: Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
// //                           child: Column(
// //                             mainAxisSize: MainAxisSize.max,
// //                             mainAxisAlignment: MainAxisAlignment.center,
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 itemList[index]['itemName'],
// //                                 style: GoogleFonts.readexPro(
// //                                   color: Colors.black,
// //                                   fontSize: 22,
// //                                   fontWeight: FontWeight.normal,
// //                                 ),
// //                               ),
// //                               DropdownButton<String>(
// //                                 value: options[0], // Use the selected option from the list (you may need to modify this)
// //                                 onChanged: (val) {
// //                                   setState(() {
// //                                     options[index] = val;
// //                                   });
// //                                 },
// //                                 items: options.map((String value) {
// //                                   return DropdownMenuItem<String>(
// //                                     value: value,
// //                                     child: Text(value, style: TextStyle(color: Colors.yellow.shade900)),
// //                                   );
// //                                 }).toList(),
// //                                 style: GoogleFonts.readexPro(fontSize: 14, color: Colors.grey),
// //                                 hint: Text('Quantity'),
// //                                 icon: Icon(
// //                                   Icons.keyboard_arrow_down_rounded,
// //                                   color: Colors.yellow.shade900,
// //                                   size: 19,
// //                                 ),
// //                                 dropdownColor: Colors.white,
// //                                 elevation: 2,
// //                                 underline: Container(
// //                                   height: 0,
// //                                   color: Colors.transparent,
// //                                 ),
// //                                 selectedItemBuilder: (BuildContext context) {
// //                                   return options.map<Widget>((String value) {
// //                                     return Row(
// //                                       children: [
// //                                         Text(
// //                                           value,
// //                                           style: GoogleFonts.readexPro(
// //                                             color: Colors.yellow.shade900,
// //                                             fontSize: 15,
// //                                             fontWeight: FontWeight.normal,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     );
// //                                   }).toList();
// //                                 },
// //                                 iconSize: 20,
// //                                 isExpanded: true,
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                       Padding(
// //                         padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
// //                         child: Column(
// //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                           crossAxisAlignment: CrossAxisAlignment.center,
// //                           children: [
// //                             Text(
// //                               itemList[index]['itemPrice'],
// //                               textAlign: TextAlign.end,
// //                               style: GoogleFonts.outfit(
// //                                 color: Colors.black,
// //                                 fontWeight: FontWeight.w500,
// //                                 fontSize: 22,
// //                               ),
// //                             ),
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.transparent,
// //                                 borderRadius: BorderRadius.circular(18),
// //                                 border: Border.all(
// //                                   color: Colors.grey.shade400,
// //                                   width: 2,
// //                                 ),
// //                               ),
// //                               child: Row(
// //                                 crossAxisAlignment: CrossAxisAlignment.center,
// //                                 mainAxisAlignment: MainAxisAlignment.center,
// //                                 children: [
// //                                   IconButton(
// //                                     icon: Icon(Icons.remove, color: Colors.green.shade700),
// //                                     onPressed: decrementCount,
// //                                   ),
// //                                   Text(count.toString(), style: TextStyle(color: Colors.green.shade700)),
// //                                   IconButton(
// //                                     icon: Icon(Icons.add, color: Colors.green.shade700),
// //                                     onPressed: incrementCount,
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
// //                   child: Row(
// //                     mainAxisSize: MainAxisSize.max,
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       Expanded(
// //                         child: Padding(
// //                           padding: EdgeInsetsDirectional.fromSTEB(5, 4, 8, 6),
// //                           child: SelectionArea(
// //                             child: AutoSizeText(
// //                               itemList[index]['itemDescription'],
// //                               textAlign: TextAlign.start,
// //                               style: GoogleFonts.readexPro(fontSize: 8, color: Colors.black),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                       Icon(
// //                         Icons.delete_outline,
// //                         color: Colors.red,
// //                         size: 24,
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         );
// //       },
// //     );
// //   }
// // }
//
//
//
//
//
