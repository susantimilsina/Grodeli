import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/Pages/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static Color blueColor = Color(0xFF2267A2);
  static Color lightBlueColor = Color(0xFF1E88E5);
  static Color viewColor = Color(0xFFB4BDCF);
  static Color grayText = Color(0x80000000);
  static Color blackText = Color(0xCC000000);
  static Color gray = Color(0xFFF0F0F0);
  static Color lightGray = Color(0xFFf9f9f9);
  static Color transBlue = Color(0x802267A2);
  static Color transLightBlue = Color(0x102267A2);
  static Color greenColor = Color(0xFF67BB3D);
  static Color transGreenColor = Color(0x1067BB3D);
  static Color lightGreenColor = Color(0x8067BB3D);
  static Color pinkColor = Color(0xFFD33483);
  static Color redColor = Color(0xFFD40000);
  static Color transRedColor = Color(0x20D40000);
  static Color lightblueTextColor = Color(0xFF91B3D1);
  static Color statusOnlineColor = Color(0xFF52de01);
  static Color statusAwayColor = Color(0xFFf6c500);
  static Color statusBusyColor = Color(0xFFff2323);
  static Color statusOfflineColor = Color(0xFF9a9fac);
  static Color lightblueButtonBgColor = Color(0xFFe7eef5);

  static double titleTextSize;
  static double subtitleTextSize;
  static double detailTextSize;
  static double subDetailTextSize;
  static double appBarHeightSize;
  static double marginSize;
  static double heightSpaceSize;
  static double widthSpaceSize;
  static double iconSize;


  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        supportedLocales: [
          Locale('en'),
        ],
        localizationsDelegates: [
          CountryLocalizations.delegate,
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          }),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home:SplashScreen()
    );
  }
}
