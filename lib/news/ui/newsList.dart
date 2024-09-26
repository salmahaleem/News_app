import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/logic/news/news_cubit.dart';
import 'package:news_app/news/ui/details_page.dart';

class NewsList extends StatelessWidget{
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit,NewState>(builder: (context,state)
    {
      if (state is NewsLoading){
        return const CircularProgressIndicator();
      }
       if (state is NewsLoaded){
        ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (context,index){
           return TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>
                 DetailsPage(title: state.news[index].title,des: state.news[index].des,)));
           }, child: Text(state.news[index].title));
        });
      }
       if(state is NewsFaller){
         return Text(state.error);
      }
      return Container();
    });
  }
  
}