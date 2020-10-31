import 'package:flutter/material.dart';
import 'package:grodeliecom/src/model/product.dart';
import '../roundedge.dart';

class AllRoundedProductcard extends StatefulWidget {
  @override
  _AllRoundedProductcardState createState() => _AllRoundedProductcardState();
}

class _AllRoundedProductcardState extends State<AllRoundedProductcard> {
  @override
  Widget build(BuildContext context) {
    return   RoundEdgeProductCard(
      product: Product(
          title: "Red Potato",
          image:
          "https://image.shutterstock.com/image-photo/young-potato-isolated-on-white-260nw-630239534.jpg",
          id: "1",
          price: "Rs 100",
          dis: "50",
          des: "dddd"),
    );
  }
}
