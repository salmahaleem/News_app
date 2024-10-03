import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/logic/news/news_cubit.dart';
import 'package:news_app/news/model/news_model.dart';
import 'package:news_app/news/ui/details_page.dart';

import 'card_page.dart';

class NewsList extends StatelessWidget{
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit,NewState>(builder: (context,state)
    {
      if (state is NewsLoading){
        return Center(child: const CircularProgressIndicator());
      }
      else if (state is NewsLoaded){
        return ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (context,index){
              return CardPage(newsModel: state.news[index],);
            });
      }
      else if(state is NewsFaller){
        return Text(state.error);
      }
      return Container(child: Text("No News"),);
    });
  }

}
