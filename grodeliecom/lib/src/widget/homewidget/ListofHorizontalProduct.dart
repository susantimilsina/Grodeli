import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/product.dart';
import 'package:grodeliecom/src/widget/homewidget/roundedge.dart';

class HorizontalProducts extends StatefulWidget {
  @override
  _HorizontalProductsState createState() => _HorizontalProductsState();
}

class _HorizontalProductsState extends State<HorizontalProducts> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return  Container(
      height:675.ssp,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return RoundEdgeProductCard(
            product: Product(
                title: "Red Potato",
                image:
                "https://image.shutterstock.com/image-photo/young-potato-isolated-on-white-260nw-630239534.jpg",
                id: "1",
                price: "Rs 100",
                dis: "50",
                des: "dddd"),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
