import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_container.dart';

class NewsListBuilder extends StatelessWidget {
  const NewsListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        // return NewsContainer(image: image, title: title, description: description)
      },
      itemCount: 7,
    );
  }
}
