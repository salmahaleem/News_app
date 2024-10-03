import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsPage extends StatelessWidget {
  String? title ;
  String? des;

  DetailsPage({super.key, this.title, this.des});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NEWS"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Column(
        children: [
          Text(title!,style: TextStyle(fontSize: 30,color: Colors.red),),
          SizedBox(height: 20.h,),
          Text(des!,style: TextStyle(fontSize: 20),),

        ],
      ),
    );
  }

}