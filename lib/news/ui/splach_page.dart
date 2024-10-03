import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/core/utils/constant.dart';


class SplachPage extends StatefulWidget{
   SplachPage({super.key});

  @override
  State<SplachPage> createState() => _SplachPageState();
}

class _SplachPageState extends State<SplachPage> {

  void initState(){
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, Constant.homePage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child:  Image(image: AssetImage("assets/images/logo.gif")),
     ),

   );
  }
}