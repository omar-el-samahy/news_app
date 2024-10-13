import 'package:flutter/material.dart';

import '../models/categories_model.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({
    super.key,
    // required this.image,
    // required this.title,
    // required this.description
  });
  // final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Column(
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
                  image: NetworkImage(category[0].image), fit: BoxFit.fill),
            ),
          ),
        ),
        Text(
          "title",
          maxLines: 2,
          overflow: TextOverflow.fade,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          "description",
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15,
            // fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
