import 'package:flutter/material.dart';
import 'package:uber/Uber_app_ui/styles/colors.dart';



final TextStyle basicTextStyle = TextStyle(
  fontFamily: "SFUIDisplay",
  fontWeight: FontWeight.normal,
  fontSize: 16.0,
);

final TextTheme textTheme = TextTheme(
  bodyText1: basicTextStyle,
  bodyText2: basicTextStyle.merge( TextStyle(fontSize: 14.0)),
  subtitle1: basicTextStyle.merge(
    TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 30.0,
    ),
  ),
  subtitle2: basicTextStyle.merge(
    TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
    ),
  ),
);

class ThemeScheme {
  static dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: dbackgroundColor,
      primaryColor: dprimaryColor,
      accentColor: dsecondaryColor,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: lbackgroundColor,
      primaryColor: lprimaryColor,
      accentColor: lsecondaryColor,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: dbasicDarkColor),
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
