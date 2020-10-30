import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/banner.dart';
import 'package:grodeliecom/src/widget/homewidget/CardsCarouselWidget.dart';
import 'package:grodeliecom/src/widget/homewidget/ListofHorizontalProduct.dart';
import 'package:grodeliecom/src/widget/homewidget/customappbar.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constant.dart';
import '../../main.dart';
import 'drawer.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  double height = 0;
  double width = 0;
  String filter;
  TextEditingController searchcontroller = new TextEditingController();
  List<Banners> restaurantsList = [];

  @override
  void initState() {
    for (int i = 0; i < 10; i++) {
      restaurantsList.add(Banners(
          id: "$i",
          title: "Title $i",
          linkimage: i % 2 == 0
              ? "https://image.cnbcfm.com/api/v1/image/105964943-1560377013grocery-store-header.png?v=1561046400"
              : "https://images.unsplash.com/photo-1542838132-92c53300491e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"));
    }
    searchcontroller.addListener(() {
      setState(() {
        filter = searchcontroller.text;
      });
    });
  }

  @override
  void dispose() {
    searchcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    MyApp.titleTextSize = 45.ssp;
    MyApp.subtitleTextSize = 35.ssp;
    MyApp.detailTextSize = 20.ssp;
    MyApp.subDetailTextSize = 15.ssp;
    MyApp.appBarHeightSize = 125.ssp;
    MyApp.marginSize = 40.ssp;
    MyApp.heightSpaceSize = 50.ssp;
    MyApp.iconSize = 60.ssp;

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return WillPopScope(
      onWillPop: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
      child: Scaffold(
        appBar: AppBarWidget(
//          height: MyApp.appBarHeightSize,
        ),
        body: homeWidget(),
        drawer: DrawerWidget(),
      ),
    );
  }

  Widget homeWidget() {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
      },
      child: Container(
        height: height,
//     margin: EdgeInsets.only(bottom:width*0.02),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(MyApp.marginSize),
              height: 130.ssp,
              //color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: searchcontroller,
                autofocus: false,
                decoration: new InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(),
                  fillColor: Colors.white,
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                  ),
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(),
                  ),
                  //fillColor: Colors.green
                ),
                obscureText: false,
                keyboardType: TextInputType.text,
                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Expanded(child: firstWidget())
          ],
        ),
      ),
    );
  }

  Widget firstWidget() {
    return SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(MyApp.marginSize),
              child: Column(
                children: [
                  Container(
                    child: CardsCarouselWidget(
                      restaurantsList: restaurantsList,
                    ),
                  ),
                  //top product
                  SizedBox(
                    height: MyApp.heightSpaceSize,
                  ),
                  commonRowForNameAndViewAll("Top Products", 1),
                  HorizontalProducts(),
                  SizedBox(
                    height: MyApp.heightSpaceSize,
                  ),
                  commonRowForNameAndViewAll("Trending", 2),
                  HorizontalProducts(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: appcolor,
                child: Column(
                  children: [
                    SizedBox(
                      height: MyApp.heightSpaceSize,
                    ),
                    InkWell(
                        onTap: () {
                          _launchURL("https://grodeli.netlify.app/");
                        },
                        child: Text("grodeli.netlify.app",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: MyApp.titleTextSize,
                                decoration: TextDecoration.underline,
                                fontFamily: Constants.SPOPPINS))),
                    SizedBox(
                      height: MyApp.heightSpaceSize,
                    ),
                    Text("Number: +9779849037497, +9779849037497",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MyApp.subtitleTextSize,
                            fontFamily: Constants.SPOPPINS)),
                    SizedBox(
                      height: MyApp.heightSpaceSize,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/image/facebook.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/image/instagram.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MyApp.heightSpaceSize,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  commonRowForNameAndViewAll(
    String title,
    int whichmethod,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              title,
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
        GestureDetector(
          onTap: () {},
          child: Padding(
              padding: const EdgeInsets.all(10),
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
        )
      ],
    );
  }
}
