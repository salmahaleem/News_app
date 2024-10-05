import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news/ui/OnBoarding.dart';
import 'package:news_app/news/ui/details_page.dart';
import 'package:news_app/news/ui/home_page.dart';
import 'package:news_app/news/ui/splach_page.dart';
import 'constant.dart';

class AppRoutes {

  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch(settings.name){

      case Constant.homePage:
        return MaterialPageRoute(builder: (context)=>HomePage());

      // case Constant.detailsPage:
      //   return MaterialPageRoute(builder: (context)=>DetailsPage(newsModel: state.news[index]));

      case Constant.splach:
        return MaterialPageRoute(builder: (context)=>SplachPage());

      case Constant.onBoarding:
        return MaterialPageRoute(builder: (context)=>OnboardingPage());

    default:
      return null;
    }
  }
}