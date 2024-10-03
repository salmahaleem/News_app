import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news/ui/details_page.dart';
import 'package:news_app/news/ui/home_page.dart';

import 'constant.dart';

class AppRoutes {

  Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case Constant.homePage:
        return MaterialPageRoute(builder: (context)=>HomePage());

      case Constant.detailsPage:
        return MaterialPageRoute(builder: (context)=>DetailsPage());


    default:
      return null;
    }
  }
}