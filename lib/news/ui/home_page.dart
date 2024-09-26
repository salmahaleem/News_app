import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/news/news_cubit.dart';
import 'details_page.dart';
import 'newsList.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:Text("News"),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_rounded)),
        IconButton(onPressed: (){}, icon: Icon(Icons.logout_outlined)),
      ],
      ),
      body: NewsList(),
    );
  }

}

class NewsList extends StatelessWidget{
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit,NewState>(builder: (context,state)
    {
      if (state is NewsLoaded){
        ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (context,index){
              return TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    DetailsPage(title: state.news[index].title,des: state.news[index].des,)));
              }, child: Text(state.news[index].title,style: TextStyle(color: Colors.red ,fontSize: 25),));
            });
        print("ooooooooook");
      }

      if (state is NewsLoading){
        return const CircularProgressIndicator();
      }

      if(state is NewsFaller){
        return Text(state.error);
      }
      return Center(
        child:Text("No News")
      );
    });
  }

}