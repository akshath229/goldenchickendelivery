
import 'package:flutter/material.dart';
import 'package:rms_delivery2/screens/home/widget/cartlist.dart';
import 'package:rms_delivery2/screens/home/widget/cartpagewaste2.dart';
import 'package:rms_delivery2/screens/home/widget/constom_app_bar.dart';
import 'package:rms_delivery2/screens/home/widget/food_list.dart';
import 'package:rms_delivery2/screens/home/widget/food_list_view.dart';

import '../../constants/colours.dart';
import '../../models/restaurant.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final pageController = PageController();
  final restaurant = Restaurant.generateRestaurant();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            Icons.arrow_back_ios_outlined,
            Icons.search_outlined,
            leftCallback: () => Navigator.of(context).pop()
          ),
           // RestaurantInfo(),
          Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 15,),
            child: FoodList(selected,
             (int index){
              setState(() {
                selected = index;
              });
              pageController.jumpToPage(index);
            },  restaurant,),
          ),
          Expanded(child: FoodListView(
            selected,
              (int index){
              setState(() {
                selected = index;
              });
              },
            pageController,
              restaurant
          )),

        ]),
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(left: 8, top: 6, bottom: 8, right: 6),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: <Widget>[
      //       FloatingActionButton.extended(
      //         backgroundColor: Colors.yellow.shade700,
      //         onPressed: () {
      //           // Add your logic here
      //         },
      //         icon: Icon(
      //           Icons.shopping_bag_outlined,
      //           color: Colors.black,
      //           size: 25,
      //         ),
      //         label: Text(
      //           "4 items added",
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 16,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //       FloatingActionButton.extended(
      //         backgroundColor: Colors.green.shade800,
      //         onPressed: () async {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => OrderedWidget(onCountChanged: (int value) {  },)),
      //           );
      //         },
      //         icon: Icon(
      //           Icons.arrow_forward,
      //           color: Colors.white,
      //           size: 15,
      //         ),
      //         label: Text(
      //           "Next",
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 15.0,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: Container(height: 75,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 6, bottom: 8, right: 6),
              child: Container(

                width: MediaQuery.of(context).size.width / 2.3,
                height: 52,
                child: RawMaterialButton(
                  fillColor: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                  onPressed: () {
                    // Add your logic here
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.shopping_bag_sharp,
                        color: Colors.black,
                        size: 25,
                      ),
                      Text(
                        "4 items added",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_up_outlined,
                        color: Colors.yellow.shade700,
                        size: 25,
                      ),

                    ],
                  ),
                ),
              ),
            ),
            // Expanded(
            //   flex: 1,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 8, top: 6, bottom: 8, right: 6),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       height: 48,
            //       width: 183,
            //       child: ElevatedButton(
            //         style: ButtonStyle(
            //           backgroundColor: MaterialStateProperty.all(Colors.green.shade800),
            //           shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //             RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(23.0),
            //             ),
            //           ),
            //         ),
            //         onPressed: () async {
            //           cartConroller.addProduct(widget.food);
            //           // Add your logic for "Add to Cart" button here
            //         },
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             Icon(
            //               Icons.shopping_bag_outlined,
            //               color: Colors.white,
            //               size: 20,
            //             ),
            //             Text(
            //               " Add To Cart\t\t" + value.toString() + "\$",
            //               style: TextStyle(
            //                 fontSize: 15.0,
            //                 color: Colors.white,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 6, bottom: 8, right: 6),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => OrderedWidget(onCountChanged: (int value) {  },)),
                      // );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    // floatingActionButton:FloatingActionButton(
    // onPressed: () { },
    // backgroundColor: kPrimaryColor,
    // elevation: 2,
    // child: GestureDetector(onTap: () {
    //   // Navigator.push(
    //   //   context,
    //   //   MaterialPageRoute(builder: (context) => Cartlist()));
    //   },
    //   child: Icon(Icons.shopping_bag_outlined,
    //   color: Colors.black,
    //   size: 30),
    // ),),
    );
  }
}

