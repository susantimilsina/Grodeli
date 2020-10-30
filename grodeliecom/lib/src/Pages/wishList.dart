import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constant.dart';
import '../../main.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  List<String> data = ["Manage Cart", "Select Address", "Select Payment"];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: getappbar("WishList"),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  alignment: Alignment.topCenter,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, position) => Stack(
                      children: <Widget>[
                        Positioned(
                          top: 90.ssp,
                          bottom: null,
                          left: 0,
                          right: 0,
                          height: 2,
                          width: null,
                          child: Container(
                            color: Colors.lightBlue.shade200,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(40.ssp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 16),
                                child: Text(
                                  (position+1).toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40.ssp,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                padding: EdgeInsets.all(6),
                                width: 100.ssp,
                                height: 100.ssp,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: MyApp.lightBlueColor,
                                  borderRadius: BorderRadius.circular(100.ssp),
                                ),
                              ),
                              SizedBox(
                                height: 20.ssp,
                              ),
                              Text(
                                data[position],
                                style: TextStyle(
                                  fontSize: MyApp.marginSize,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
