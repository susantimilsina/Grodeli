import 'package:flutter/material.dart';
import 'package:grodeliecom/src/widget/homewidget/topProductWidget.dart';

import '../../NavigateScreen.dart';
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
                      color: appcolor),
                  child:
                  Container(
                    padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.05),
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.height * 0.05,
                      child: Text("G",
                        style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.height * 0.09),
                      ),
                      backgroundColor: Color(0xffffc220),
                      foregroundColor: Colors.white,
                    ),
                  ),),
                DrawerListTile(title: "TOP PRODUCTS",link: TopProductWidget(title:"TOP PRODUCTS" ,),),
                DrawerListTile(title: "TRENDING",link: TopProductWidget(title:"TRENDING" ,),),
                DrawerListTile(title: "GROCERIES",link: TopProductWidget(title:"GROCERIES" ,),),
                DrawerListTile(title: "ORGANIC",link: TopProductWidget(title:"ORGANIC" ,),),
              ],
            ),
          ),
        ),
      );
  }
}
class DrawerListTile extends StatefulWidget {
  String title;
  Widget link;
  DrawerListTile({this.title,this.link});
  @override
  _DrawerListTileState createState() => _DrawerListTileState();
}

class _DrawerListTileState extends State<DrawerListTile> {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: (){

        changeScreen(context,widget.link);
      },
      title: Text(widget.title),
    );
  }
}
