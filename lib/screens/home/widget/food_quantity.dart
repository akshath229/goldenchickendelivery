
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Globals/globalvariables.dart';
import '../../../constants/colours.dart';
import '../../../models/food.dart';

class FoodQuantity extends StatefulWidget {
  final Food food;
  final double containerWidth;

  FoodQuantity( this.food, {this.containerWidth = 230});
  _FoodQuantityState createState() => _FoodQuantityState();
}

class _FoodQuantityState extends State<FoodQuantity> {
  int valuee=1;
  int Item_qty = 1;
  var tappedIndex=1;
  initState(){
    Env.TotalAmt = int.parse(widget.food.qty[tappedIndex].values.first).toInt();
    valuee =  Env.TotalAmt;
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: double.maxFinite,
              height: 140,
              child: ListView.separated(
                  padding: const EdgeInsets.all(5),
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index)=>
                      Padding(
                        padding: const EdgeInsets.only(bottom:13.0),
                        child: Container(
                            width: double.maxFinite,
                            height: 50,
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment(-0.3, 0),
                                  child: InkWell(
                                    onTap: (){
                                      setState(() {
                                        tappedIndex = index;
                                        // ignore: unnecessary_statements
                                        Env.TotalAmt = int.parse(widget.food.qty[tappedIndex].values.first).toInt();
                                        valuee =  Env.TotalAmt;
                                      });
                                      print("the totalamount is " + Env.TotalAmt.toString());


                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: tappedIndex == index ? Colors.green[100] :  Colors.grey.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(30)),
                                      width: widget.containerWidth,
                                      height: double.maxFinite,

                                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                        children: [

                                          Text("\$", style: TextStyle(fontSize:12, fontWeight:FontWeight.bold),),
                                          Text(widget.food.qty[index].values.first.toString(), style: TextStyle(
                                              fontSize: 24, fontWeight: FontWeight.bold
                                          ),),
                                          Text("\t\t\t\t" + widget.food.qty[index].keys.first, style: TextStyle(
                                            fontSize: 18
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                  separatorBuilder: (_, index)=>SizedBox(height: 0),
                  itemCount: widget.food.qty.length),
            ),
          SizedBox(height: 5),
           Container(
             height: 45,
                 width: 140,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: Icon(Icons.remove, color: Colors.red, size: 30.0),
                      onPressed: () {
                        setState(() {
                          --Item_qty;
                          if (Item_qty < 1) {
                            Item_qty = 1;
                          }
                          Env.TotalAmt=valuee *Item_qty;
                          print("THe total is " + Env.TotalAmt.toString() );
                        });
                      }),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(Item_qty.toString(), style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15
                    ),),
                  ),
                  IconButton(
                      icon: Icon(Icons.add, color: Colors.green, size: 30.0),
                      onPressed: () {
                        setState(() {
                          ++Item_qty;
                          Env.TotalAmt=valuee *Item_qty;
                          print("THe total is " + Env.TotalAmt.toString() );
                        });
                      }),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

