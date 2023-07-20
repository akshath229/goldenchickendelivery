import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../controllers/cartcontroller.dart';
import '../../../models/food.dart';
import '../Dtailscreen.dart';
import 'food_items.dart';

class OrderedWidget extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int> onCountChanged;
  final Food food;
  final Food selectedItem;


  const OrderedWidget({
    Key? key,
    this.initialValue = 1,
    required this.onCountChanged, required this.food, required this.selectedItem,
  }) : super(key: key);

  @override
  _OrderedWidgetState createState() => _OrderedWidgetState();
}

class _OrderedWidgetState extends State<OrderedWidget> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.initialValue;
  }

  void incrementCount() {
    setState(() {
      count++;
      widget.onCountChanged(count);
    });
  }

  void decrementCount() {
    setState(() {
      if (count > 1) {
        count--;
        widget.onCountChanged(count);
      }
    });
  }

  List<String> options = ['full', 'half'];
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
     int totalItems = cartController.getTotalItems();
    // double totalprice = cartController.getTotalCost();
    return Obx(
            () {
          final cartProducts = cartController.getCartProducts();
          return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(30),
            ),
            width: 46,
            height: 46,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 24,
            ),
          ),
        ),

        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Align(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: double.maxFinite,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'YOUR CART',
                                  style: GoogleFonts.readexPro(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                                  child: Text(
                                    'Your Cravings',
                                    style: GoogleFonts.readexPro(
                                      color: Colors.grey.shade600,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                Divider(
                                  height: 7,
                                  thickness: 1.5,
                                  color: Colors.grey.shade500,
                                ),
                                ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: cartProducts.length, // Replace `itemCount` with the actual number of items you want to display
                                  itemBuilder: (context, index) {
                                    final food = cartProducts[index];
                                    final int productQuantity = cartController.getProductQuantity(food);

                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 0,
                                              color: Colors.grey,
                                              offset: Offset(0, 1),
                                            )
                                          ],
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(12),
                                                        child: Image.asset(
                                                          food.imgUrl,
                                                          width: 70,
                                                          height: 70,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              food.name,
                                                              style: GoogleFonts.readexPro(
                                                                color: Colors.black,
                                                                fontSize: 22,
                                                                fontWeight: FontWeight.normal,
                                                              ),
                                                            ),
                                                            DropdownButton<String>(
                                                              value: _model.dropDownValue1,
                                                              onChanged: (val) {
                                                                setState(() {
                                                                  _model.dropDownValue1 = val;
                                                                });
                                                              },
                                                              items: [
                                                                DropdownMenuItem<String>(
                                                                  value: 'full',
                                                                  child: Text('full', style: TextStyle(color: Colors.yellow.shade900)),
                                                                ),
                                                                DropdownMenuItem<String>(
                                                                  value: 'half',
                                                                  child: Text('half', style: TextStyle(color: Colors.yellow.shade900)),
                                                                ),
                                                              ],
                                                              style: GoogleFonts.readexPro(fontSize: 14, color: Colors.grey),
                                                              hint: Text('Quantity'),
                                                              icon: Icon(
                                                                Icons.keyboard_arrow_down_rounded,
                                                                color: Colors.yellow.shade900,
                                                                size: 19,
                                                              ),
                                                              dropdownColor: Colors.white,
                                                              elevation: 2,
                                                              underline: Container(
                                                                height: 0,
                                                                color: Colors.transparent,
                                                              ),
                                                              selectedItemBuilder: (BuildContext context) {
                                                                return options.map<Widget>((String value) {
                                                                  return Row(
                                                                    children: [
                                                                      Text(
                                                                        value,
                                                                        style: GoogleFonts.readexPro(
                                                                          color: Colors.yellow.shade900,
                                                                          fontSize: 15,
                                                                          fontWeight: FontWeight.normal,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  );
                                                                }).toList();
                                                              },
                                                              iconSize: 20,
                                                              isExpanded: true,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            food.price1.toString(),
                                                            textAlign: TextAlign.end,
                                                            style: GoogleFonts.outfit(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 22,
                                                            ),
                                                          ),
                                                          Container(
                                                            decoration: BoxDecoration(
                                                              color: Colors.transparent,
                                                              borderRadius: BorderRadius.circular(18),
                                                              border: Border.all(
                                                                color: Colors.grey.shade400,
                                                                width: 2,
                                                              ),
                                                            ),
                                                            child: Row(
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              children: [
                                                                IconButton(
                                                                  icon: Icon(Icons.remove, color: Colors.green.shade700),
                                                                  onPressed: decrementCount,
                                                                ),
                                                                Text('$productQuantity', style: TextStyle(color: Colors.green.shade700)),
                                                                IconButton(
                                                                  icon: Icon(Icons.add, color: Colors.green.shade700),
                                                                  onPressed: incrementCount,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 4, 8, 6),
                                                        child: SelectionArea(
                                                          child: AutoSizeText(
                                                            food.desc,
                                                            textAlign: TextAlign.start,
                                                            style: GoogleFonts.readexPro(fontSize: 8, color: Colors.black),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    GestureDetector( // cartController.removeProduct(food);
                                                       onTap: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => DetailsScreen(widget.selectedItem, widget.food)),
                                                        );
                                                      },
                                                      child: Icon(
                                                        Icons.delete_outline,
                                                        color: Colors.red,
                                                        size: 24,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                )

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
                      child: Container(
                        width: double.maxFinite,
                        height: 380,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ORDER SUMMARY',
                                style: GoogleFonts.readexPro(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  'Verify and move to checkout',
                                  style: GoogleFonts.readexPro(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Divider(
                                height: 27,
                                thickness: 2,
                                color: Colors.grey.shade500,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                      child: Text(
                                        'Price Breakdown',
                                        style: GoogleFonts.readexPro(
                                          color: Colors.black87,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Base Price',
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black87,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text("225.45",
                                            // '\$${totalprice.toStringAsFixed()}',
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Taxes',
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black87,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '₹24.20',
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black87,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Delivery tip',
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black87,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Add tip',
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.readexPro(
                                              color: Colors.yellow.shade700,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Delivery Charge',
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black87,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            '₹40.00',
                                            textAlign: TextAlign.end,
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Total',
                                                style: GoogleFonts.outfit(
                                                  color: Colors.black,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  print('IconButton pressed ...');
                                                },
                                                child: Container(
                                                  width: 36,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons.info_outlined,
                                                    color: Colors.yellow.shade800,
                                                    size: 18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '₹230.20',
                                            style: GoogleFonts.readexPro(
                                              color: Colors.black,
                                              fontSize: 36,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
        child: Container(
          width: double.maxFinite,
          height: 50,
          child: FloatingActionButton(
            onPressed: () {
              print('Button pressed ...');
            },
            backgroundColor: Color(0xFFDAC027),
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            hoverColor: Colors.yellow,
            hoverElevation: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
              child: Text(
                'Continue to Checkout',
                style: GoogleFonts.readexPro(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
            },
    );
  }
}

mixin _model {
  static String? dropDownValue1;
  static String? dropDownValue2;
}
// Padding(
//   padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//   child: Container(
//     width: MediaQuery.sizeOf(context).width,
//     decoration: BoxDecoration(
//       color: Colors.grey.shade100,
//       boxShadow: [
//         BoxShadow(
//           blurRadius: 0,
//           color: Colors.grey,
//           offset: Offset(0, 1),
//         )
//       ],
//       borderRadius: BorderRadius.circular(20),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         mainAxisSize: MainAxisSize.max,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 1),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(12),
//                     child: Image.asset(
//                       'lib/images/image-from-rawpixel-id-2878371-png.png',
//                       width: 70,
//                       height: 70,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
//                     child: Column(
//                       mainAxisSize: MainAxisSize.max,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Chinese Noodles",
//                           style: GoogleFonts.readexPro(color: Colors.black, fontSize: 22, fontWeight: FontWeight.normal),
//                         ),
//                         DropdownButton<String>(
//                           value: _model.dropDownValue2,
//                           onChanged: (val) {
//                             setState(() {
//                               _model.dropDownValue2 = val;
//                             });
//                           },
//                           items: [
//                             DropdownMenuItem<String>(
//                               value: 'full',
//                               child: Text('full', style: TextStyle(color: Colors.yellow.shade900)),
//                             ),
//                             DropdownMenuItem<String>(
//                               value: 'half',
//                               child: Text('half', style: TextStyle(color: Colors.yellow.shade900)),
//                             ),
//                           ],
//                           style: GoogleFonts.readexPro(fontSize: 14, color: Colors.grey),
//                           hint: Text('Quantity'),
//                           icon: Icon(
//                             Icons.keyboard_arrow_down_rounded,
//                             color: Colors.yellow.shade900,
//                             size: 19,
//                           ),
//                           dropdownColor: Colors.white,
//                           elevation: 2,
//                           underline: Container(
//                             height: 0,
//                             color: Colors.transparent,
//                           ),
//                           selectedItemBuilder: (BuildContext context) {
//                             return options.map<Widget>((String value) {
//                               return Row(
//                                 children: [
//                                   Text(
//                                     value,
//                                     style: GoogleFonts.readexPro(
//                                       color: Colors.yellow.shade900,
//                                       fontSize: 15,
//                                       fontWeight: FontWeight.normal,
//                                     ),
//                                   ),
//                                 ],
//                               );
//                             }).toList();
//                           },
//                           iconSize: 20,
//                           isExpanded: true,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         '₹115.00',
//                         textAlign: TextAlign.end,
//                         style: GoogleFonts.outfit(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 22),
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.transparent,
//                           borderRadius: BorderRadius.circular(18),
//                           border: Border.all(
//                             color: Colors.grey.shade400,
//                             width: 2,
//                           ),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             IconButton(
//                               icon: Icon(Icons.remove, color: Colors.green.shade700),
//                               onPressed: decrementCount,
//                             ),
//                             Text(count.toString(), style: TextStyle(color: Colors.green.shade700)),
//                             IconButton(
//                               icon: Icon(Icons.add, color: Colors.green.shade700),
//                               onPressed: incrementCount,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
//             child: Row(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsetsDirectional.fromSTEB(5, 4, 8, 6),
//                     child: SelectionArea(
//                       child: AutoSizeText(
//                         'sliced onion, shredded cabbage, chopped bean, sliced capsicum (green pepper)',
//                         textAlign: TextAlign.start,
//                         style: GoogleFonts.readexPro(fontSize: 8, color: Colors.black),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Icon(
//                   Icons.delete_outline,
//                   color: Colors.red,
//                   size: 24,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   ),
// ),