import 'package:flutter/material.dart';

class FoodType extends  StatefulWidget {
  @override
  State<FoodType> createState() => _FoodTypeState();
}

class _FoodTypeState extends State<FoodType> {
  late String gender;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
        height: 300,
        padding: EdgeInsets.all(20),
        child:
        Column(
          children: [

            Text("Which ratio are you needed", style: TextStyle(
                fontSize: 18
            ),),

            Divider(),

            RadioListTile(
              title: Text("Large\t\t\t \t\t\t(300rs)"),
              value: "Large",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),

            RadioListTile(
              title: Text("Medium\t\t\t \t\t\t(200rs)"),
              value: "Medium",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Small\t\t\t \t\t\t(100rs)"),
              value: "Small",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),


          ],
        ),
      );
  }
}