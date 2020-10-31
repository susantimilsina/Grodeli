import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/CartItem.dart';
import '../../../constant.dart';
import '../../../main.dart';
import '../amt_adjust.dart';
class CartItem extends StatefulWidget {
  final CartItemModel cartItemModel;

  CartItem(this.cartItemModel);
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Column(
      children: [
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 30.ssp, right: 30.ssp, top: 15.ssp, bottom: 15.ssp),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30.ssp),
                  )),
              child:
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                    width: 175.ssp,
                    height: 190.ssp,
                    child:
                    FadeInImage.assetNetwork(
                      placeholder: "assets/image/loadinggal.png",
                      image:widget.cartItemModel.product.image,
                      height: 175.ssp,
                      width: 175.ssp,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(15.ssp),
                      child: Column(
                        //  mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(right: 10.ssp),
                                width: MediaQuery.of(context).size.width * 0.45,
                                child:
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        widget.cartItemModel.product.title,
                                        softWrap: true,
                                        style: TextStyle(
                                            fontFamily: Constants.SOPEN_SANS,
                                            fontSize: MyApp.subtitleTextSize),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  confirmRemove(context);
                                  setState(() {});
                                },
                                child: Container(
                                  height: 80.ssp,
                                  width: 65.ssp,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.ssp),
                                      )),
                                  child: Icon(
                                    Icons.delete_forever,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Rs " + widget.cartItemModel.product.price.toString() + " /" + widget.cartItemModel.product.weight.toString(),
                            style: TextStyle(
                                fontSize: MyApp.subtitleTextSize, fontFamily: Constants.OPEN_SANS),
                          ),
                          AddSub(product: widget.cartItemModel.product)
                        ],
                      ),
                    ),
                    flex: 100,
                  )
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
  confirmRemove(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Remove"),
      content: Text("Are you sure you want to remove??"),
      actions: <Widget>[
        RaisedButton(
            child: Text("Yes"),
            color: Colors.red,
            onPressed: () async {
              setState(() {
              });
//              Navigator.of(context)
//                  .pushNamedAndRemoveUntil('/Signin', (route) => false);
            }),
        RaisedButton(
            child: Text("No"),
            color: Colors.yellow,
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );

    showDialog(context: context, child: alertDialog);
  }

}
