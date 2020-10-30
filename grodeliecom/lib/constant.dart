import 'package:flutter/material.dart';
import 'main.dart';
class Constants {
  static const String POPPINS = "Poppins";
  static const String SPOPPINS = "SPoppins";
  static const String RPOPPINS = "RPoppins";
  static const String OPEN_SANS = "OpenSans";
  static const String SOPEN_SANS = "SOpenSans";
  static const String ROPEN_SANS = "ROpenSans";
}
Color appcolor=Color(0xff004c91);
AppBar getappbar(String title){
  return AppBar(
    backgroundColor: appcolor,
    title: Text(title,    style: TextStyle(
        color: Colors.white,
        fontSize: MyApp.titleTextSize,
        fontFamily: Constants.RPOPPINS)),
  );
}