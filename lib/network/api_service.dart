import 'package:dio/dio.dart';
import 'package:news_app/models/news.dart';

class APIService {
  Dio dio = Dio();
  final _baseURL = "https://newsapi.org";
  getNews({required String category}) async {
    var response = await dio.get(
        "$_baseURL/v2/top-headlines?country=us&category=$category&apiKey=38b1dcd428b241e3862ae0406fd3c1f9");
    Map<String, dynamic> json = response.data;
    List articles = json["articles"];
    List<News> x = [];

    for (var items in articles) {
      x.add(News.fromJSON(items));
    }
    return x;
  }
}
