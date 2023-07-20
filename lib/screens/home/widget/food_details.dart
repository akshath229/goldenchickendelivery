import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Globals/globalvariables.dart';
import '../../../constants/colours.dart';
import '../../../models/food.dart';
import 'food_quantity.dart';

class FoodDetail extends StatefulWidget {
  final Food food;
  FoodDetail(this.food);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {


  TextEditingController NotesController= new TextEditingController();

  List Item_qty = [];
  List<bool> _isChecked = [];
  bool language =false;
  @override
  initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.food.ingredients.length, false);
    for(int i=0;i<widget.food.ingredients.length;i++){
      Item_qty.add(1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      color: kBackground,
      child:Column(
        children:[
          Text(widget.food.name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
            ),),
          SizedBox(height: 15),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildIconText(
                    Icons.access_time_outlined,
                    Colors.blue,
                    widget.food.waitTime
                ),
                _buildIconText(
                    Icons.star_outline_outlined,
                    Colors.amber,
                    widget.food.score.toString()
                ),
                _buildIconText(
                    Icons.local_fire_department_outlined,
                    Colors.red,
                    widget.food.cal
                )
              ]),
          SizedBox(height: 30),
          FoodQuantity(widget.food),
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
              if(language==true) Text(
                  "About",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  )),
              if(language==false)Text(
                  "حول",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
          )),

              SizedBox(height: 10,),
              if(language==false)Text(widget.food.aboutarab,
                textAlign: TextAlign.end,

                style: TextStyle(
                    wordSpacing: 1.2,
                    height: 1.5,
                    fontSize: 16
                ),),

              if(language==true)Text(widget.food.about,
                textAlign: TextAlign.start,

                style: TextStyle(
                    wordSpacing: 1.2,
                    height: 1.5,
                    fontSize: 16
                ),),

              SizedBox(height: 30),
              TextFormField(
                controller:NotesController,
                cursorColor: Colors.deepOrange,
                onChanged: (a){ },
                scrollPadding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 16.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                  labelText: "Enter Your Notes",
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              Text("Add On's",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),)
            ],
          ),
          SizedBox(height: 20),
          Container(
            height: 500,
            child: ListView.separated(
              padding: EdgeInsets.all(0),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index)=>
                    Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child:  Container(
                    height: 55,
                    width: 160,
                    child:
                    Row(
                      children: [
                        Container(
                          width: 200,
                          child: Card(
                            elevation: 4,
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
                                  var vall=0;
                                  if(_isChecked[index]==true){
                                    vall=1;
                                  }
                                  else{
                                    vall=0;
                                  }

                                  if(vall==0){
                                    Env.TotalAmt=Env.TotalAmt+ double.parse(widget.food.ingredients[index].values.first).toDouble();
                                  }
                                  else{
                                    Env.TotalAmt=Env.TotalAmt - double.parse(widget.food.ingredients[index].values.first).toDouble() * Item_qty[index];
                                  }


                                  _isChecked[index] = val!;
                                   print("the amount is " + Env.TotalAmt.toString());
                                }),
                              ),
                              title:
                              Text(widget.food.ingredients[index].keys.first + "\t" +  widget.food.ingredients[index].values.first + "\$",
                              style: TextStyle(fontSize: 16),),
                            ),
                          ),
                        ),
                        // Row(
                        //   children: [
                        //     Text( widget.food.ingredients[index].values.first, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                        //     Text(" \$", style: TextStyle(fontSize:12, fontWeight:FontWeight.bold),),
                        //   ],
                        // ),
                        // Text(widget.food.ingredients[index].keys.first,  style: TextStyle(fontSize: 20),),
                        // SizedBox(height: 4,)
                        Visibility(
                          visible: _isChecked[index]==true,
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
                                    icon: Icon(Icons.remove, color: Colors.red, size: 20.0),
                                    onPressed: () {
                                      print("the idex value is " + index.toString());
                                      setState(() {
                                        --Item_qty[index];
                                        if (Item_qty[index] < 1) {
                                          Item_qty[index] = 1;
                                        }else
                                        Env.TotalAmt= Env.TotalAmt - double.parse(widget.food.ingredients[index].values.first).toDouble();
                                        print("the item qty add is " + Env.TotalAmt.toString());
                                      });
                                    }),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Text(Item_qty[index].toString(), style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15
                                  ),),
                                ),
                                IconButton(
                                    icon: Icon(Icons.add, color: Colors.green, size: 20.0),
                                    onPressed: () {
                                      setState(() {
                                        ++Item_qty[index];
                                        Env.TotalAmt=  Env.TotalAmt + double.parse(widget.food.ingredients[index].values.first).toDouble();
                                      });
                                      print("the item qty add is " + Env.TotalAmt.toString());
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                separatorBuilder: (_, index)=>SizedBox(width: 5),
                itemCount: widget.food.ingredients.length),
          ),
        ],
      ),
    );
  }

  Widget _buildIconText( IconData icon, Color color, String text) {
    return Row(
      children: [
        Icon(icon,
          color: color,
          size: 20,),
        Text(text,
          style: TextStyle(
              fontSize: 16
          ),)
      ],
    );
  }
}

// class FoodDetail extends StatelessWidget {
//   final Food food;
//   FoodDetail(this.food);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(25),
//       color: kBackground,
//       child:Column(
//         children:[
//           Text(food.name,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 22
//           ),),
//           SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildIconText(
//                 Icons.access_time_outlined,
//                 Colors.blue,
//                 food.waitTime
//               ),
//               _buildIconText(
//                   Icons.star_outline_outlined,
//                   Colors.amber,
//                   food.score.toString()
//               ),
//               _buildIconText(
//                   Icons.local_fire_department_outlined,
//                   Colors.red,
//                   food.cal
//               )
//             ]),
//           SizedBox(height: 30),
//           FoodQuantity(food),
//           SizedBox(height: 30),
//           Row(
//             children: [
//               Text("Incredients",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 18
//               ),)
//             ],
//           ),
//           SizedBox(height: 20),
//           Container(
//             height: 100,
//
//               child: ListView.separated(
//                 scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index)=> Container(
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(40)
//                     ),
//                     child: Column(
//                       children: [
//                         Text("\$" + food.ingredients[index].values.first, style: TextStyle(fontSize: 23),),
//                         Text(food.ingredients[index].keys.first,  style: TextStyle(fontSize: 20),),
//                       ],
//                     ),
//                   ),
//                   separatorBuilder: (_, index)=>SizedBox(width: 15),
//                   itemCount: food.ingredients.length),
//           ),
//           SizedBox(height: 20),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "About",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 18
//                 )),
//               SizedBox(height: 10,),
//
//               Text(food.about,
//               style: TextStyle(
//                 wordSpacing: 1.2,
//                 height: 1.5,
//                 fontSize: 16
//               ),),
//
//               // Container(
//               //   padding: EdgeInsets.all(10),
//               //   decoration: BoxDecoration(
//               //       color: Colors.grey,
//               //       borderRadius: BorderRadius.circular(20)
//               //   ),
//               //   child: Column(
//               //     crossAxisAlignment: CrossAxisAlignment.stretch,
//               //     children: [
//               //           Padding(
//               //             padding: const EdgeInsets.all(5.0),
//               //             child: Text("Quantity \nSelect any 1 Option"),
//               //           ),
//               //
//               //
//               //     ],
//               //   ),
//               // )
//
//
//
//
//
//             ],
//           ),
//
//
//
//         ],
//       ),
//     );
//   }
//
//  Widget _buildIconText( IconData icon, Color color, String text) {
//     return Row(
//       children: [
//         Icon(icon,
//         color: color,
//             size: 20,),
//         Text(text,
//         style: TextStyle(
//           fontSize: 16
//         ),)
//       ],
//     );
//  }
// }
