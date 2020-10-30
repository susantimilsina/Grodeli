import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/product.dart';
import 'package:grodeliecom/src/widget/homewidget/roundwdge/Favicon.dart';
import 'package:grodeliecom/src/widget/homewidget/roundwdge/shoppingicon.dart';
import '../../../constant.dart';
import '../../../main.dart';

class RoundEdgeProductCard extends StatefulWidget {
  final Product product;

  RoundEdgeProductCard({this.product});

  @override
  _RoundEdgeProductCardState createState() => _RoundEdgeProductCardState();
}

class _RoundEdgeProductCardState extends State<RoundEdgeProductCard> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return GestureDetector(
        onTap: () {},
        child: Container(
          width: 400.ssp,
//              margin: EdgeInsets.only(right: 10),
          margin: EdgeInsets.symmetric(horizontal: 5.ssp),
          child: Card(
            elevation: 2,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
//                 color: Color(0xfff5f5f5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: 200.ssp,
                                height: 75.ssp,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: '${widget.product.dis}% off',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: Constants.SPOPPINS,
                                            fontSize: 35.ssp)),
                                  ])),
                                )),
                            FavIcon()
                          ],
                        ),
                        Container(
                          width: 300.ssp,
                          height: 300.ssp,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.product.image),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MyApp.heightSpaceSize/2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.green[400],
                          ),
                          child: Text(
                            "MINE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33.ssp,
                                fontFamily: Constants.SOPEN_SANS),
                          )),
                      shopIcon()
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.ssp, left: 5.ssp),
                    child: Text(
                      widget.product.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 35.ssp,
                          fontFamily: Constants.SPOPPINS,
                          letterSpacing: 0.2
                          //fontWeight: FontWeight.bold
                          ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 8.ssp, bottom: 8.ssp, right: 8.ssp),
                      child: Column(
                        children: <Widget>[
                          Text(
//                                  widget.product.discount > 0? "${money + widget.product.price[0].product_price.toString()}": "",
                            "Rs 100/ Kg",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30.ssp,
                                fontWeight: FontWeight.bold,
                                fontFamily: Constants.SPOPPINS,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
//                        "${money + calculate(widget.product.price[0].product_price, widget.product.discount) }",
                            "Rs 50/ Kg",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.ssp,
                                fontFamily: Constants.SPOPPINS,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
