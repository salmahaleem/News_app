import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/news/model/news_model.dart';
part 'news_state.dart';

class NewsCubit extends Cubit<NewState>{

  NewsCubit(): super(NewsInitial());
  
  void funcLoaded (){
    emit(NewsLoading());

    var news = [
      NewsModel("dollar","48.54"),
      NewsModel("SAR", "12.93"),
      NewsModel("KD", "158.99"),
    ];

    emit(NewsLoaded(news));

    print("done");
  }
}
