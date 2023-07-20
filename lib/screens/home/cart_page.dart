import 'package:flutter/material.dart';
import 'package:rms_delivery2/screens/home/widget/constom_app_bar.dart';


class cart_page extends StatefulWidget {



  @override
  _cart_pageState createState() => _cart_pageState();
}

class _cart_pageState extends State<cart_page> {
  @override
  Widget build(BuildContext context) {
    return Container(child: CustomAppBar(
        Icons.arrow_back_ios_outlined,
        Icons.favorite_outline,
        leftCallback: () => Navigator.of(context).pop()
    ));
  }
}
