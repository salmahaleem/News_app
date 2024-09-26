part of 'news_cubit.dart';

@immutable

sealed class NewState {}

final class NewsInitial extends NewState {}

final class NewsLoading extends NewState {}

final class NewsLoaded extends NewState {
  List <NewsModel> news;
  NewsLoaded(this.news);
}

final class NewsFaller extends NewState {
  final String error;
  NewsFaller(this.error);
}
