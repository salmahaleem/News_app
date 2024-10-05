import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/color_mang.dart';
import 'package:news_app/core/utils/constant.dart';
import 'package:news_app/news/logic/news/news_cubit.dart';

class OnboardingPage extends StatelessWidget{
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image(image: AssetImage("assets/images/image1.png")),
            ),
            SizedBox(height:40.h),
            Text("Stay informed with the latest news across various categories. Get real-time updates and insights from around the world.",
            style: Theme.of(context).textTheme.bodyMedium
            ,textAlign:TextAlign.center
            ),
            SizedBox(height: 40.h),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: ColorMang.blueLi,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.r)),
                minimumSize: Size(double.infinity, 30.h)
              ),
                onPressed: (){
              context.read<NewsCubit>().getNews();
              Navigator.pushReplacementNamed(context, Constant.homePage);
            }, child: Text("START",style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),)
            )
          ],
        ),
      ),
    );
  }

}