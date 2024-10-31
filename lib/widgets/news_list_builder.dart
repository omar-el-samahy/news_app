import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/models/news.dart';
import 'package:news_app/network/api_service.dart';
import 'package:news_app/widgets/news_container.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key});

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  List<News>? news=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews();
  }

  getNews() async {
    APIService apiService = APIService();
    news = await apiService.getNews(category: "general");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return news == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemBuilder: (context, index) {
              return NewsContainer(
                news: news![index],
              );
            },
            itemCount: news!.length,
          );
  }
}
