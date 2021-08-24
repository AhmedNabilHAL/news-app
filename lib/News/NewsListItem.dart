import 'package:flutter/material.dart';
import 'package:news/model/NewsResponse.dart';
import 'package:news/News/ArticleDetails.dart';

InkWell NewListItem(Article article,BuildContext context) {
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ArticleDetails(article)),);
    },
    child: Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(

                article.urlToImage,
                height: 240,
                fit: BoxFit.cover,
              )),
          Text(
            article.title,
            textAlign: TextAlign.start,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Colors.black54
            ), ),
          Text(article.description,maxLines: 2,overflow: TextOverflow.ellipsis),
          Text(article.publishedAt.toString(),textAlign: TextAlign.end,
            style:TextStyle(
                fontWeight: FontWeight.w500, color: Colors.black54
            ), ),
        ],
      ),),
  );
}