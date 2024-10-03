import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'color_mang.dart';


class AppThemes{
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    cardTheme: CardTheme(color: Colors.white,shadowColor: Colors.amberAccent),
      buttonTheme: ButtonThemeData(colorScheme: ColorScheme.dark(primary: ColorMang.blueLi)),
      appBarTheme: AppBarTheme(
      color: Colors.white,
      titleTextStyle: TextStyle(color: ColorMang.blueLi,fontSize: 25),
      iconTheme: IconThemeData(color: ColorMang.blueLi)
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyles.descriptionText,
      bodySmall: TextStyles.authorText,
      titleMedium: TextStyles.newsTitle,
    )
  );

  static final ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: ColorMang.darkBlue),
      scaffoldBackgroundColor: ColorMang.darkBlue,
      cardTheme: CardTheme(color: ColorMang.darkBlue,shadowColor: ColorMang.blueLi),
      buttonTheme: ButtonThemeData(colorScheme: ColorScheme.dark(primary: ColorMang.moonColor)),
      appBarTheme: AppBarTheme(
        color: ColorMang.darkBlue,
        titleTextStyle: TextStyle(color:ColorMang.blueLi,fontSize: 25),
        iconTheme: IconThemeData(color: ColorMang.blueLi)
    ),
      textTheme: TextTheme(
        bodyMedium: TextStyles.descriptionTextDark,
        bodySmall: TextStyles.authorTextDark,
        titleMedium: TextStyles.newsTitleDark,
      ),
  );
}
// light theme text
class TextStyles {
  static TextStyle newsTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorMang.blueLi,
  );
  static TextStyle descriptionText = TextStyle(
      fontSize: 18,
      color: Colors.black,
  );

  static TextStyle authorText = TextStyle(
    fontSize: 15,
    color: ColorMang.moonColor,
    fontWeight: FontWeight.bold,
  );

//dark theme text

  static TextStyle newsTitleDark = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle descriptionTextDark = TextStyle(
    fontSize: 18,
    color: Colors.white12,
  );

  static TextStyle authorTextDark = TextStyle(
    fontSize: 15,
    color: ColorMang.blueLi,
    fontWeight: FontWeight.bold,
  );

}



