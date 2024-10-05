import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/constant.dart';
import 'package:news_app/news/model/news_model.dart';

import 'details_page.dart';

class CardPage extends StatelessWidget {
  final NewsModel newsModel;
  final String? tag ;

  CardPage({super.key, required this.newsModel, this.tag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "${newsModel.urlToImage}",
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsPage(newsModel: newsModel)));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 8,
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        newsModel.urlToImage ?? "https://via.placeholder.com/150",
                        height: 180.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey,
                            child: Icon(
                              Icons.broken_image_rounded,
                              color: Colors.white12,
                              size: 80.sp,
                            ),
                          );
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(newsModel.title ?? " No title",
                          style: Theme.of(context).textTheme.titleMedium),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(newsModel.description ?? "No descripyion",
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    overflow: TextOverflow.ellipsis,
                                  )),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text("By ${newsModel.author ?? "Unknown"}",
                          style: Theme.of(context).textTheme.bodySmall)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
