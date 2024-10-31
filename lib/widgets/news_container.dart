import 'package:flutter/material.dart';

import '../models/news.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.50),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage("${news.image}"), fit: BoxFit.fill),
              ),
            ),
          ),
          Text(
           "${news.title}",
            maxLines: 2,
            overflow: TextOverflow.fade,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
           "${ news.description}",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              // fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
