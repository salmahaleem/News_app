import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/model/news_model.dart';

import '../../../core/service/web_service.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewState>{

  NewsCubit(): super(NewsInitial());

  WebService webService = WebService();

  late List<NewsModel>myNews;

   Future getNews()async{
     emit(NewsLoading());
     try{
       myNews = await webService.fetchData();
       emit(NewsLoaded(myNews));
     }catch(error){
       emit(NewsFaller("$error"));
     }



   }
  }



