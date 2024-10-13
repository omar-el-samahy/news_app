// import 'package:dio/dio.dart';
//
// main() {
//   APIService apiService = APIService();
//   apiService.getNews();
// }
//
// class APIService {
//   Dio dio = Dio();
//   final _baseURL = "https://newsapi.org";
//   getNews() async {
//     var response = await dio.get(
//         "$_baseURL/v2/top-headlines?country=us&apiKey=38b1dcd428b241e3862ae0406fd3c1f9");
//     Map<String, dynamic> json = response.data;
//     List articles = json["articles"];
//     for (var i in articles) {
//       print(articles[0]["title"]);
//     }
//   }
// }
