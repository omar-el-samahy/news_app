import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';

import '../cubit/states.dart';
import 'news_container.dart';

class NewsListBuilderCubit extends StatefulWidget {
  const NewsListBuilderCubit({super.key});

  @override
  State<NewsListBuilderCubit> createState() => _NewsListBuilderCubitState();
}

class _NewsListBuilderCubitState extends State<NewsListBuilderCubit> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(builder: (context, state) {
      if (state is NewsSuccessState) {
        return ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (context, index) {
              return NewsContainer(news: state.news[index]);
            });
      } else if (state is NewsErrorState) {
        return Center(
          child: Text(state.errorMessage),
        );
      } else {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}
