import 'package:flutter/material.dart';

import '../../../constants/colours.dart';
import '../../../models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;
  FoodImg(this.food);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
         Column(
           children: [
             Expanded(
                 flex: 1,
                 child:Container()),
             Expanded(
                 flex: 1,
                 child: Container(

                   decoration: BoxDecoration(
                       color: kBackground,
                       borderRadius: BorderRadius.only(
                           topLeft: Radius.circular(50),
                           topRight: Radius.circular(50)
                       )
                   ),
                 )),
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
                    blurRadius: 10
                  )
                ]
              ),
              child: Image.asset(food.imgUrl, fit: BoxFit.cover,),
            ),
          )
        ],
      ),

    );
  }
}
