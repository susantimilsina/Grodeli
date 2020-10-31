import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../NavigateScreen.dart';
import '../../constant.dart';
import '../../main.dart';
import 'homewidget/topProductWidget.dart';
class Heading extends StatefulWidget {
  final String title;
  final int whichmethod;
  bool viewAll;

  Heading(this.title, this.whichmethod, this.viewAll);
  @override
  _HeadingState createState() => _HeadingState();
}

class _HeadingState extends State<Heading> {

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding:  EdgeInsets.all(15.ssp),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: MyApp.titleTextSize,
                letterSpacing: 0.5,
                fontFamily: Constants.SPOPPINS,
                //    fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        widget.viewAll ? GestureDetector(
          onTap: () {
            switch(widget.whichmethod){
              case 1:
                changeScreen(context,TopProductWidget(title: "TOP PRODUCTS",));

                break;
              case 2:
                changeScreen(context,TopProductWidget(title: "TRENDING",));
                break;
            }
          },
          child: Padding(
              padding: EdgeInsets.all(15.ssp),
              child: Row(
                children: <Widget>[
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MyApp.subtitleTextSize,
                      letterSpacing: 0.5,
                      fontFamily: Constants.SPOPPINS,
                      //    fontWeight: FontWeight.bold
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: MyApp.subtitleTextSize,
                  )
                ],
              )),
        ) : Container()
      ],
    );
  }
}
