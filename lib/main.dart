import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/constant.dart';
import 'package:news_app/core/utils/color_mang.dart';
import 'package:news_app/core/utils/styles.dart';
import 'package:news_app/core/utils/routes.dart';
import 'news/logic/theme/theme_cubit.dart';
import 'news/logic/news/news_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (_) => NewsCubit()),
      BlocProvider(create: (_) => ThemeCubit()),
    ],
    child: const MyApp(),),
        );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<ThemeCubit, ThemeState>(builder: (context , state)
    {
      return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: state.themeData,
          onGenerateRoute: AppRoutes().onGenerateRoute,
          initialRoute: Constant.splach,
        ),
      );
    });

  }
}
