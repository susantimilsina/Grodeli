import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/CartItem.dart';
import 'package:grodeliecom/src/model/product.dart';
import 'package:grodeliecom/src/widget/cartWidget/cartItem.dart';
import 'package:grodeliecom/src/widget/heading.dart';
import '../../constant.dart';
import '../../main.dart';


class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  List<String> data = ["Manage Cart", "Select Address", "Select Payment"];
  List<String> address = ["Lalitpur", "Bhaktapur", "Kathmandu"];
  List<CartItemModel> carts = [];
  paymentMethod _character = paymentMethod.cashondelivery;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 5; i++) {
      Product p = new Product();
      p.weight = "Kg";
      p.des = "Description $i";
      p.id = "$i";
      p.title = "Title $i";
      p.image =
      "https://image.shutterstock.com/image-photo/young-potato-isolated-on-white-260nw-630239534.jpg";
      p.price = "200";
      carts.add(CartItemModel(quantity: 2.0, product: p));
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    ScreenUtil.init(context);
    return Scaffold(
      appBar: getappbar("Cart"),
      body:
      Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 300.ssp,
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
                                  (position + 1).toString(),
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
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.ssp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "CART",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MyApp.titleTextSize,
                        letterSpacing: 0.5,
                        fontFamily: Constants.SPOPPINS,
                        //    fontWeight: FontWeight.bold
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100.ssp,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.ssp),
                            side: BorderSide(color: MyApp.lightBlueColor)),
                        onPressed: () {},
                        padding: EdgeInsets.all(20.ssp),
                        color: Colors.white,
                        textColor: MyApp.lightBlueColor,
                        child: Text("Apply Coupon Code",
                            style: TextStyle(fontSize: 40.ssp)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.ssp),
                height: MediaQuery.of(context).size.height / 2,
                child: ListView.builder(
                    itemCount: carts.length,
                    itemBuilder: (context, index) {
                      return CartItem(carts[index]);
                    }),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: 100.ssp, right: 50.ssp, top: 25.ssp, bottom: 25.ssp),
                margin: EdgeInsets.only(left: 50.ssp, right: 50.ssp),
                decoration:
                BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.ssp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Net Total",
                          style: TextStyle(
                              fontFamily: Constants.ROPEN_SANS,
                              fontSize: MyApp.subtitleTextSize),
                        ),
                        Text(
                          "Rs 250",
                          style: TextStyle(
                              fontFamily: Constants.ROPEN_SANS,
                              fontSize: MyApp.subtitleTextSize),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.ssp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Discount",
                          style: TextStyle(
                              fontFamily: Constants.SOPEN_SANS,
                              fontSize: MyApp.subtitleTextSize),
                        ),
                        Text(
                          "Rs 50",
                          style: TextStyle(
                              fontFamily: Constants.SOPEN_SANS,
                              fontSize: MyApp.subtitleTextSize),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MyApp.heightSpaceSize,
              ),
              Heading("DELIVERY ADDRESS", 1, false),
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    onPressed: () {},
                    color: appcolor,
                    textColor: Colors.white,
                    child: Text(
                      "ADD NEW ADDRESS",
                      style: TextStyle(
                        fontSize: 14,),
                    ),
                  ),
                ),
              ),
              Heading("PAYMENT METHOD", 3, false),
              ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Container(
                    height: 250.ssp,
                    child: Card(
                      elevation: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PaymentRadio('Cash On Delivery', paymentMethod.cashondelivery),
                          PaymentRadio(
                              'Khalti', paymentMethod.khalti),
                          PaymentRadio('Esewa', paymentMethod.esewa),
                        ],
                      ),
                    )),
              ),
              InkWell(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.all(30.ssp),
                  height: 150.ssp,
                  width: width,
                  decoration: BoxDecoration(
                    color: Color(0xff097eca),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "CONFIRM ORDER",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Rs. 1054",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget PaymentRadio(String title, paymentMethod method) {
    return Container(
      height: 70.ssp,
      child: RadioListTile<paymentMethod>(
        title: Text(title,
          style: TextStyle(
              fontSize: 40.ssp
          ),
        ),
        activeColor: appcolor,
        value: method,
        groupValue: _character,
        onChanged: (paymentMethod value) {
          if (title == "Pay with online") {
            setState(() {
              _character = value;
            });
          } else {
            setState(() {
              _character = value;
            });
          }
        },
      ),
    );
  }
}

enum paymentMethod { cashondelivery, khalti, esewa }