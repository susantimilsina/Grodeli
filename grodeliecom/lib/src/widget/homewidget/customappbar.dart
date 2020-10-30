import 'package:flutter/material.dart';
import 'package:grodeliecom/src/Pages/wishList.dart';
import '../../../NavigateScreen.dart';
import '../../../constant.dart';
import '../../../main.dart';

class AppBarWidget extends PreferredSize {
  final double height;
  final String title;

  AppBarWidget({this.height = kToolbarHeight, this.title});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("GroDeli",
          style: TextStyle(
              color: Colors.white,
              fontSize: MyApp.titleTextSize,
              fontFamily: Constants.RPOPPINS)
      ),
      backgroundColor: appcolor,
      actions: [
        GestureDetector(
          onTap: () {
                },
          child: Icon(Icons.favorite_border, size: MyApp.iconSize,),
        ),
        SizedBox(width: MyApp.heightSpaceSize,),
        GestureDetector(
          onTap: (){
          },
          child: Icon(Icons.perm_identity, size: MyApp.iconSize,),
        ),
        SizedBox(width: MyApp.heightSpaceSize,),
        GestureDetector(
          onTap: (){
            changeScreen(context,WishList());
          },
          child: Icon(Icons.shopping_cart, size: MyApp.iconSize,),
        ),
        SizedBox(width: MyApp.heightSpaceSize,),
      ],
    );
  }
}
