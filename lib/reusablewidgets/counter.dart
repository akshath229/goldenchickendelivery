import 'package:flutter/material.dart';

class CartItemCounter extends StatefulWidget {
  final int initialValue;
  final ValueChanged<int> onCountChanged;

  CartItemCounter({
    this.initialValue = 1,
    required this.onCountChanged,
  });

  @override
  _CartItemCounterState createState() => _CartItemCounterState();
}

class _CartItemCounterState extends State<CartItemCounter> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.initialValue;
  }

  void incrementCount() {
    setState(() {
      count++;
      widget.onCountChanged(count);
    });
  }

  void decrementCount() {
    setState(() {
      if (count > 1) {
        count--;
        widget.onCountChanged(count);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Container(
           child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove,color: Colors.black),
                onPressed: decrementCount,
              ),
              Text(count.toString()),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: incrementCount,
              ),
            ],
      ),
         ),
       ),
    );
  }
}
