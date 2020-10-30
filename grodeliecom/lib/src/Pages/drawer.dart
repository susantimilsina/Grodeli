import 'package:flutter/material.dart';

import '../../constant.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    var wt = MediaQuery.of(context).size.width;
    var ht = MediaQuery.of(context).size.height * 0.25;
    return
      SafeArea(
        child: SizedBox(
          width: wt * 0.70,
          child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.23,
                decoration: BoxDecoration(
                    color: appcolor),),],
          ),
    ),
        ),
      );
  }
}
