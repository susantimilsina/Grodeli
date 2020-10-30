import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grodeliecom/src/model/banner.dart';

class CardsCarouselWidget extends StatefulWidget {
  List<Banners> restaurantsList;

  CardsCarouselWidget({Key key, this.restaurantsList}) : super(key: key);

  @override
  _CardsCarouselWidgetState createState() => _CardsCarouselWidgetState();
}

class _CardsCarouselWidgetState extends State<CardsCarouselWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
        height: 500.ssp,
        child: CarouselSlider(
          items: widget.restaurantsList.map((element) {
            return Builder(builder: (BuildContext context) {
              return Container(
                  child: FadeInImage.assetNetwork(
                placeholder: "assets/image/loadinggal.png",
                image: element.linkimage,
                fit: BoxFit.fill,
              ));
            });
          }).toList(),
          options: CarouselOptions(
            height: 500.ssp,
            aspectRatio: 4 / 3,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ));
  }
}
