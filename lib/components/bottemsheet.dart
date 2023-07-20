// import 'package:flutter/material.dart';
//
// import '../models/food.dart';
//
// class sheetquantity extends StatefulWidget {
//   final Food food;
//   const sheetquantity({super.key, required this.food});
//
//   @override
//   State<sheetquantity> createState() => _sheetquantityState();
// }
//
// class _sheetquantityState extends State<sheetquantity> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       body: Container(
//         width: double.maxFinite,
//         height: 140,
//         child: ListView.separated(
//             padding: const EdgeInsets.all(8),
//             scrollDirection: Axis.vertical,
//             itemBuilder: (context, index)=>
//                 Padding(
//                   padding: const EdgeInsets.only(bottom:18.0),
//                   child: Container(
//                       width: double.maxFinite,
//                       height: 50,
//                       child: Stack(
//                         children: [
//                           Align(
//                             alignment: Alignment(-0.3, 0),
//                             child: InkWell(
//                               onTap: (){
//                                 setState(() {
//                                   tappedIndex = index;
//                                   // ignore: unnecessary_statements
//                                   Env.TotalAmt = int.parse(widget.food.qty[tappedIndex].values.first).toInt();
//                                   valuee =  Env.TotalAmt;
//                                 });
//                                 print("the totalamount is " + Env.TotalAmt.toString());
//
//
//                               },
//                               child: Container(
//                                 width: double.maxFinite,
//                                 height: 50,
//                                 decoration: BoxDecoration(
//                                   color: tappedIndex == index ? Colors.green[100] :  Colors.grey.withOpacity(0.1),
//                                   borderRadius: BorderRadius.circular(15),),
//                                 child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text("\$", style: TextStyle(fontSize:12, fontWeight:FontWeight.bold),),
//                                     Text(widget.food.qty[index].values.first.toString(), style: TextStyle(
//                                         fontSize: 24, fontWeight: FontWeight.bold
//                                     ),),
//                                     Text("\t\t\t\t" + widget.food.qty[index].keys.first, style: TextStyle(
//                                         fontSize: 18
//                                     ),),
//
//                                   ],
//                                 ),
//                               ),
//
//                             ),
//                           ),
//                         ],
//                       )
//                   ),
//                 ),
//             separatorBuilder: (_, index)=>SizedBox(height: 0),
//             itemCount: widget.food.qty.length),
//       ),
//     );
//   }
// }
//
//
