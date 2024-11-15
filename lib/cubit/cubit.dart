import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/network/api_service.dart';

import '../models/news.dart';

class NewsCubit extends Cubit<NewsStates> {
  APIService apiService = APIService();
  List<News>? news;
  NewsCubit() : super(NewsInitialState());
  getNews({required String category}) async {
    emit(NewsLoadingState());
    try {
      news = await apiService.getNews(category: category);
      emit(NewsSuccessState(news!));
    } on Exception catch (e) {
      emit(NewsErrorState(e.toString()));
      // TODO
    }
  }
}
