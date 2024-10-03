import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:news_app/news/logic/news/news_cubit.dart';
import 'package:news_app/news/logic/theme/theme_cubit.dart';
import '../../core/utils/color_mang.dart';
import 'newsList.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:Text("NEWS"),
      actions: [
        DayNightSwitcherIcon(
            dayBackgroundColor: ColorMang.blueLi,
            nightBackgroundColor: ColorMang.darkBlue,
            isDarkModeEnabled: context.read<ThemeCubit>().state.themeData.brightness ==
               Brightness.dark,
            onStateChanged: (value) {
            context.read<ThemeCubit>().Toggle();
          }),
        IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined,)),
      ],
      ),
      body: NewsList()
    );
  }

}



