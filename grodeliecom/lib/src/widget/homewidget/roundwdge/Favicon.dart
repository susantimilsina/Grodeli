import 'package:flutter/material.dart';

import '../../../../main.dart';

class FavIcon extends StatefulWidget {
  @override
  _FavIconState createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool clicked;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    clicked=false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          clicked = !clicked;
        });
      },
      child: Icon(
        clicked?Icons.favorite:Icons.favorite_border,
        color:clicked?Colors.red: MyApp.transBlue,
      ),
    );
  }
}
