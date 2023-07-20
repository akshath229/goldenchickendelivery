import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Globals/globalvariables.dart';
import '../../../constants/colours.dart';
import '../../../controllers/cartcontroller.dart';
import '../../../models/food.dart';

import 'food_quantity.dart';


class FoodItem extends StatefulWidget {
  final Food food;
  FoodItem(this.food);

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {

  late List Item_qty = [];
 late List<bool> _isChecked = [];
  bool language = false;
  @override
  initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.food.ingredients.length, false);
    for (int i = 0; i < widget.food.ingredients.length; i++) {
      Item_qty.add(1);
    }
  }
  final cartConroller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [

            Container(
              padding: EdgeInsets.all(5),
              width: 120,
                height: 130,
              child: Image.asset(widget.food.imgUrl, fit: BoxFit.fitHeight,),
            ),
            Expanded(
                child: Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.food.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),),

                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.green.shade700),
                        height: 30,
                        width: 85,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green.shade700),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                )
                            ),
                          ),
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            // cartConroller.addProduct(widget.food);
                            _isChecked = List<bool>.filled(widget.food.ingredients.length, false);
                            Item_qty = List<int>.filled(widget.food.ingredients.length, 1);
                             showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)
                              ),
                              builder:  (context) =>
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Container(
                                      color: Colors.grey.shade100,
                                height: 805,
                                child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(Icons.arrow_drop_down,size: 29,color: Colors.yellow.shade900),
                                        Card(elevation: 4,
                                          child: Container(height: 80,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                                                color: Colors.white),

                                            child: Row(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(5),
                                                  width: 120,
                                                  height: 130,
                                                  child: Image.asset(widget.food.imgUrl, fit: BoxFit.fitHeight,),
                                                ),
                                                Text(widget.food.name,
                                                  style:GoogleFonts.readexPro(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w700)
                                                ),
                                              ],
                                            ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Container(height: 285,width: double.maxFinite,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
                                            child: Padding(
                                              padding: const EdgeInsets.all(15.0),
                                              child: Column(crossAxisAlignment:  CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                                                  children: [
                                                Row(
                                                  children: [
                                                  Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [

                                                      Text("Quantity",style: GoogleFonts.readexPro(color: Colors.black, fontSize: 18)),
                                                      Text("Select any one",style: GoogleFonts.readexPro(color: Colors.grey.shade600, fontSize: 12)),


                                                    ],
                                                  ),

                                                ],
                                                ),
                                                    //the food medium and large
                                                    // FoodQuantity(widget.food),
                                                    SizedBox(height: 15,),

                                                    FoodQuantity(widget.food,containerWidth: double.maxFinite),

                                              ]),
                                            ),

                                          ),
                                        ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: new Container(
                                                margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                                                child: Divider(
                                                  color: Colors.black,
                                                  height: 36,
                                                )),
                                          ),
                                          Text("ADD ONS",
                                              style: GoogleFonts.readexPro(color: Colors.black, fontSize: 18)),
                                          Expanded(
                                            child: new Container(
                                                margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                                                child: Divider(
                                                  color: Colors.black,
                                                  height: 36,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Container(
                                          height: 280,
                                          child: ListView.separated(
                                            padding: EdgeInsets.all(1),
                                            scrollDirection: Axis.vertical,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding: const EdgeInsets.only(bottom: 8),
                                              child: Container(
                                                padding: EdgeInsets.all(5),
                                                decoration: BoxDecoration(
                                                  color: Colors.transparent,
                                                  borderRadius: BorderRadius.circular(32),
                                                ),
                                                child: Container(
                                                  height: 55,
                                                  width: 160,
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        width: 200,
                                                        child: Card(color: Colors.white,
                                                          elevation: 2,
                                                          shape: RoundedRectangleBorder(
                                                            borderRadius: const BorderRadius.all(
                                                              Radius.circular(25),
                                                            ),
                                                            side: BorderSide(
                                                              color: Colors.green.withOpacity(0.9),
                                                              width: 1,
                                                            ),
                                                          ),
                                                          child: ListTile(
                                                            dense: true,
                                                            leading: Checkbox(
                                                              value: _isChecked[index],
                                                              onChanged: (val) {
                                                                setState(() {
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
                                                                });
                                                              },
                                                            ),

                                                            title: Text(
                                                              widget.food.ingredients[index].keys.first + "\t" +  widget.food.ingredients[index].values.first + "\$",
                                                              style: TextStyle(fontSize: 14),
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
                                            ),
                                            separatorBuilder: (_, index) => SizedBox(width: 5),
                                            itemCount: widget.food.ingredients.length,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(Colors.green.shade700),
                                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(17),
                                                ),
                                              ),
                                            ),
                                            onPressed: () async {
                                              cartConroller.addProduct(widget.food);
                                              Navigator.of(context).pop();

                                            },
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "ADD",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 10,),
                                                Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                  size: 18,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),


                                      ],

                                    ),
                                ),
                              ),
                                  ),
                            );
                          },
                        )

                      ),
                    ]),
                  Text(widget.food.desc,
                    style: TextStyle(
                        color:
                    widget.food.hightLight ?
                    kPrimaryColor:
                    Colors.grey.withOpacity(0.8),height:1.5),),
                    SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("\$", style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text("${widget.food.price1}", style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  )
                ],
              ),
            ))
          ],
        )
      ),
    );
  }
}



