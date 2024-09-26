import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  String title ;
  String des;

  DetailsPage({super.key,required this.title,required this.des});

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
          Text(title,style: TextStyle(fontSize: 30,color: Colors.red),),
          SizedBox(height: 20,),
          Text(des,style: TextStyle(fontSize: 20),),

        ],
      ),
    );
  }

}