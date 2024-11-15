import '../models/news.dart';

abstract class NewsStates {}

class NewsInitialState extends NewsStates {}

class NewsLoadingState extends NewsStates {}

class NewsSuccessState extends NewsStates {
  final List<News> news;
  NewsSuccessState(this.news);
}

class NewsArticleState extends NewsStates {
  final String errorMessage;
  NewsArticleState(this.errorMessage);
}
