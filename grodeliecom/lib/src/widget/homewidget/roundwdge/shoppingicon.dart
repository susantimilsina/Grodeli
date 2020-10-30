import 'package:flutter/material.dart';

import '../../../../main.dart';

class shopIcon extends StatefulWidget {
  @override
  _shopIconState createState() => _shopIconState();
}

class _shopIconState extends State<shopIcon> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      },
      child: Icon(Icons.add_shopping_cart,color: Colors.grey,
        size: MyApp.iconSize,
      ),
    );
  }
}
