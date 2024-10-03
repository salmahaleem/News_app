import 'package:dio/dio.dart';
import 'package:news_app/news/model/news_model.dart';

class WebService {
  Dio dio = Dio();

  Future<List<NewsModel>> fetchData() async {
    try {
      var response = await dio.get(
          "https://newsapi.org/v2/top-headlines?country=us&apiKey=b89ef4398870400e9afb6f58959df99e");
      if (response.statusCode == 200) {
        Map<String, dynamic> josnData = response.data;
        List<dynamic> news = josnData["articles"];

        List<NewsModel> newslist = [];

        for (var artical in news) {
          NewsModel newmodel = NewsModel.fromJosn(artical);
          newslist.add(newmodel);
        }
        return newslist;
      } else {
        throw Exception(response.data["error"]["message"]);
      }
    } catch (error) {
      throw Exception("$error");
    }
  }
}
