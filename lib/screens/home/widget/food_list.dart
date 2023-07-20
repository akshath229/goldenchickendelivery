import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants/colours.dart';
import '../../../models/restaurant.dart';


class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;

 FoodList(this.selected, this.callback, this.restaurant);
  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();
    final image = restaurant.image.keys.toList();
    return Container(
      height: 50,

      child:

      ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? kPrimaryColor : Colors.white,
            ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(image[index], fit: BoxFit.cover,),
                  ),
              ),
              Text(
                category[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ),
        ),
          separatorBuilder: (_, index) => SizedBox(width: 20),
        itemCount: image.length,
      )





      // GridView.builder(
      //   itemCount: image.length,
      //   scrollDirection: Axis.horizontal,
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //       crossAxisCount: 2),
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //
      //           child: new GestureDetector(
      //             onTap: () => callback(index),
      //             child: Container(
      //               padding: EdgeInsets.symmetric(horizontal: 25),
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20),
      //                 color: selected == index ? kPrimaryColor : Colors.white,
      //               ),
      //               child: Container(
      //                 height: 40,
      //                 width: 100,
      //                 child: Row(
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.all(1.0),
      //                       child: Container(
      //                         width: 40,
      //                         height: 40,
      //                         child: Image.asset(image[index], fit: BoxFit.cover,),
      //                       ),
      //                     ),
      //                     Text(
      //                       category[index],
      //                       style: TextStyle(fontWeight: FontWeight.bold),
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ),//just for testing, will fill with image later
      //     );
      //   },
      // ),





    );
  }
}
