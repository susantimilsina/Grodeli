import 'package:flutter/material.dart';
import 'package:grodeliecom/src/widget/homewidget/roundwdge/AllCompleteProductCard.dart';
import '../../../constant.dart';

class TopProductWidget extends StatefulWidget {
  String title;
  TopProductWidget({@required this.title});
  @override
  _TopProductWidgetState createState() => _TopProductWidgetState();
}

class _TopProductWidgetState extends State<TopProductWidget> {
  @override
  Widget build(BuildContext context) {
   double height = MediaQuery
        .of(context)
        .size
        .height;
   double width = MediaQuery
        .of(context)
        .size
        .width;
    return
    Scaffold(
       appBar: getappbar(widget.title),
       body: GridView.count(
         shrinkWrap: true,
         childAspectRatio: (width) / (height * 0.72),
         crossAxisSpacing: 3.0,

         mainAxisSpacing: 3.0,
         padding: EdgeInsets.all(7),
         crossAxisCount: 2,
         children: List<Widget>.generate(10, (index) {
           return AllRoundedProductcard();
         }),
       )
     );
  }
}
