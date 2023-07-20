import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {

  final IconData leftIcon;
  final IconData righticon;
  final Function leftCallback;
  CustomAppBar(this.leftIcon, this.righticon, {required this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: leftCallback != null ?() => leftCallback() : null,
            child: _buildIcon(leftIcon),),
          _buildIcon(righticon),
        ],
    ),
    );
  }

 Widget _buildIcon(IconData icon) {
    return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: Icon(icon),
    );


 }}


