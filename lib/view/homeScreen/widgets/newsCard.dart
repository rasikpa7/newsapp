import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:news_app_rest_api/models/news_response_model.dart';

class NewsCard extends StatelessWidget {
  Article snap;
  NewsCard({Key? key, required this.snap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              Wrap(
                children: [
                  Text(
                    snap.title!,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1),
                  ),
                  Text(
                    snap.author??'galeel  gibrani',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
              Image.network(snap.urlToImage??'https://thumbs.dreamstime.com/b/flower-insect-10-1096734.jpg'),
              Container(height: 50, child: Text(snap.description!))
            ],
          ),
        ),
      ),
    );
  }
}
