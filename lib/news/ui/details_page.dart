import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/news/logic/news/news_cubit.dart';
import 'package:news_app/news/model/news_model.dart';

import '../../core/utils/color_mang.dart';
import '../../core/utils/constant.dart';
import '../logic/theme/theme_cubit.dart';

class DetailsPage extends StatelessWidget {
   final NewsModel newsModel;

  DetailsPage({super.key, required this.newsModel});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewState>(
  builder: (context, state) {
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
          IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, Constant.homePage);
          }, icon: Icon(Icons.home_filled,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Hero(
          tag:"${newsModel.urlToImage}" ,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 8,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        newsModel.urlToImage ?? "https://via.placeholder.com/150",
                        height: 180.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey,
                            child: Icon(
                              Icons.broken_image_rounded,
                              color: Colors.white12,
                              size: 80.sp,
                            ),
                          );
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),),
                    child: Container(
                    child: Column(
                    children: [
                        SizedBox(height: 20.h,),
                        Text(newsModel.title ?? "non",style: Theme.of(context).textTheme.titleMedium,),
                        SizedBox(height: 20.h,),
                        Text(newsModel.description ?? "non",style: Theme.of(context).textTheme.bodyMedium,),
                        SizedBox(height: 20.h,),
                        Text(newsModel.author ?? "non",style: Theme.of(context).textTheme.bodySmall,),
                        SizedBox(height: 20.h,),
                        Text(newsModel.content ?? "non",style: Theme.of(context).textTheme.bodySmall,),
                      ])),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  },
);
  }

}