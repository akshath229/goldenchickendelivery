import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rms_delivery2/controllers/cartcontroller.dart';
import 'package:rms_delivery2/screens/home/widget/cartlist.dart';
import 'package:rms_delivery2/screens/home/widget/cartpagewaste2.dart';
import 'package:rms_delivery2/screens/home/widget/constom_app_bar.dart';
import 'package:rms_delivery2/screens/home/widget/food_quantity.dart';
import 'package:rms_delivery2/screens/home/widget/wastecart.dart';

import '../../Globals/globalvariables.dart';
import '../../constants/colours.dart';
import '../../models/food.dart';
import '../../models/product.dart';
import 'cart_page.dart';

class DetailsScreen extends StatefulWidget {
  final Food food;
  final Food selectedItem;


  DetailsScreen(this.food, this.selectedItem);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final cartConroller = Get.put(CartController());

  TextEditingController NotesController = new TextEditingController();

  List Item_qty = [];
  List<bool> _isChecked = [];
  bool language = false;

  @override
  initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.food.ingredients.length, false);
    for (int i = 0; i < widget.food.ingredients.length; i++) {
      Item_qty.add(1);
    }
  }

  late double value;

  didChangeDependencies() {
    print("The did change value is " + Env.TotalAmt.toString());
    value = (Env.TotalAmt ?? 0.0).toDouble();
  }

  @override
  Widget build(BuildContext context) {
    List<Product> cart = [];

    return Scaffold(
      backgroundColor: kPrimaryColor,
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width / 2.3,
      //   height: 54,
      //   child: RawMaterialButton(
      //     fillColor: Colors.yellow.shade700,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(25),
      //     ),
      //     elevation: 2,
      //     onPressed: () {
      //       // Add your logic here
      //     },
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Icon(
      //           Icons.shopping_bag_outlined,
      //           color: Colors.black,
      //           size: 30,
      //         ),
      //         Text(
      //           "4 items added",
      //           style: TextStyle(
      //             color: Colors.black,
      //             fontSize: 18,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ],
      //     ),
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
                      backgroundColor: MaterialStateProperty.all(Colors.green.shade700),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () async {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => OrderedWidget(onCountChanged: (int value) {  }, food: , selectedItem: null,)),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              Icons.arrow_back_ios_outlined,
              Icons.favorite_outline,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            Container(
              height: 250,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Expanded(flex: 1, child: Container()),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kBackground,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(-1, 10),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Image.asset(
                        widget.food.imgUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              color: kBackground,
              child: Column(
                children: [
                  Text(
                    widget.food.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildIconText(
                        Icons.access_time_outlined,
                        Colors.blue,
                        widget.food.waitTime,
                      ),
                      _buildIconText(
                        Icons.star_outline_outlined,
                        Colors.amber,
                        widget.food.score.toString(),
                      ),
                      _buildIconText(
                        Icons.local_fire_department_outlined,
                        Colors.red,
                        widget.food.cal,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  FoodQuantity(widget.food,containerWidth: 230.0),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: language,
                        onChanged: (bool? value) {
                          setState(() {
                            language = value ?? false;
                          });
                        },
                      ),
                      SizedBox(height: 4,),
                      if (language == true) Text(
                        "About",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      if (language == false) Text(
                        "حول",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),

                      SizedBox(height: 10,),
                      if (language == false) Text(
                        widget.food.aboutarab,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          wordSpacing: 1.2,
                          height: 1.5,
                          fontSize: 16,
                        ),
                      ),

                      if (language == true) Text(
                        widget.food.about,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          wordSpacing: 1.2,
                          height: 1.5,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        controller: NotesController,
                        cursorColor: Colors.deepOrange,
                        onChanged: (a){},
                        scrollPadding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 16.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                          labelText: "Enter Your Notes",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "Add On's",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 500,
                    child: ListView.separated(
                      padding: EdgeInsets.all(0),
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) => Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Container(
                          height: 55,
                          width: 160,
                          child: Row(
                            children: [
                              Container(
                                width: 200,
                                child: Card(
                                  elevation: 1,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    side: BorderSide(
                                      color: Colors.green.withOpacity(0.9),
                                      width: 0.9,
                                    ),
                                  ),
                                  child: ListTile(
                                    dense: true,
                                    leading: Checkbox(
                                      value: _isChecked[index],
                                      onChanged: (val) => setState(() {
                                        var vall = 0;
                                        if(_isChecked[index] == true){
                                          vall = 1;
                                        }
                                        else{
                                          vall = 0;
                                        }

                                        if(vall == 0){
                                          Env.TotalAmt = Env.TotalAmt + double.parse(widget.food.ingredients[index].values.first).toDouble();
                                        }
                                        else{
                                          Env.TotalAmt = Env.TotalAmt - double.parse(widget.food.ingredients[index].values.first).toDouble() * Item_qty[index];
                                        }

                                        _isChecked[index] = val!;
                                        print("The amount is " + Env.TotalAmt.toString());
                                      }),
                                    ),
                                    title: Text(
                                      widget.food.ingredients[index].keys.first + "\t" +  widget.food.ingredients[index].values.first + "\$",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                ),
                              ),
                              Visibility(
                                visible: _isChecked[index] == true,
                                child: Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          color: Colors.red,
                                          size: 20.0,
                                        ),
                                        onPressed: () {
                                          print("The index value is " + index.toString());
                                          setState(() {
                                            --Item_qty[index];
                                            if (Item_qty[index] < 1) {
                                              Item_qty[index] = 1;
                                            }
                                            else {
                                              Env.TotalAmt = Env.TotalAmt - double.parse(widget.food.ingredients[index].values.first).toDouble();
                                            }
                                            print("The item qty add is " + Env.TotalAmt.toString());
                                          });
                                        },
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child: Text(
                                          Item_qty[index].toString(),
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.add,
                                          color: Colors.green,
                                          size: 20.0,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            ++Item_qty[index];
                                            Env.TotalAmt = Env.TotalAmt + double.parse(widget.food.ingredients[index].values.first).toDouble();
                                          });
                                          print("The item qty add is " + Env.TotalAmt.toString());
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      separatorBuilder: (_, index) => SizedBox(width: 5),
                      itemCount: widget.food.ingredients.length,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconText(IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
