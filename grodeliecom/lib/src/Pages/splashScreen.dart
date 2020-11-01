import 'dart:async';
import 'package:flutter/material.dart';

import '../../NavigateScreen.dart';
import '../../constant.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData() {
    Future.delayed(Duration(seconds: 1), () {
    changeScreenReplacement(context,  Home_Screen());
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:appcolor ,
      body: Container(

        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Image.asset(
              //   'assets/image/shamslogo.png',
              //   width: 150,
              //   fit: BoxFit.cover,
              // ),
              SizedBox(height: 50), CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
