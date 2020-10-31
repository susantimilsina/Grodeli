import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/product.dart';

import '../../main.dart';

class AddSub extends StatefulWidget {
  Product product;

  AddSub({@required this.product,});

  @override
  _AddSubState createState() => _AddSubState();
}

class _AddSubState extends State<AddSub> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Rs ",  // widget.product.price yesma aauxa price
              style: TextStyle(
                  fontSize: MyApp.subtitleTextSize,
                  //fontFamily: Constants.POPPINS,
                  color: Colors.green),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60.ssp,
                    width: 60.ssp,
                    decoration: BoxDecoration(
                        color: MyApp.statusAwayColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.ssp),
                        )),
                    child: Icon(
                      Icons.remove_circle,
                      size: 45.ssp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.ssp,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1),
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: MyApp.titleTextSize),
                  ),
                ),
                SizedBox(
                  width: 15.ssp,
                ),
                GestureDetector(
                  onTap: () {
                    // setState(() {
                    //   count++;
                    //   getAddNDeldata();
                    // });
                  },
                  child: Container(
                    height: 60.ssp,
                    width: 60.ssp,
                    decoration: BoxDecoration(
                        color: MyApp.statusAwayColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.ssp),
                        )),
                    child: Icon(
                      Icons.add_circle,
                      size: 40.ssp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
