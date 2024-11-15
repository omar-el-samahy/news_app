import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit.dart';

class CategoryContainer extends StatefulWidget {
  const CategoryContainer({super.key, required this.name, required this.image});
  final String name, image;

  @override
  State<CategoryContainer> createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<NewsCubit>().getNews(category: widget.name);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Colors.tealAccent,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: DecorationImage(
                image: NetworkImage(widget.image), fit: BoxFit.fill),
          ),
          child: Text(
            widget.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(1.0, 2.0),
                  blurRadius: 5.0,
                  color: Colors.black54,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
