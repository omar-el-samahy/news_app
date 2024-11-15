import 'package:flutter/material.dart';

import '../models/news.dart';

class NewsContainer extends StatefulWidget {
  const NewsContainer({super.key, required this.news});
  final News news;

  @override
  State<NewsContainer> createState() => _NewsContainerState();
}

bool _isExpanded = false;

class _NewsContainerState extends State<NewsContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              alignment: Alignment.center,
              width: 400,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage("${widget.news.image}"),
                    fit: BoxFit.fill),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "${widget.news.title}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                    _isExpanded
                        ? widget.news.description ?? 'No Description'
                        : (widget.news.description != null &&
                                widget.news.description!.length > 100
                            ? '${widget.news.description!.substring(0, 100)}...'
                            : widget.news.description ?? 'No Description'),
                    maxLines: _isExpanded ? null : 3,
                    overflow: _isExpanded ? null : TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    )),
              )),
        ],
      ),
    );
  }
}
