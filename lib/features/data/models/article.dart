import 'package:news_app_clean_architecture/features/domain/entities/article.dart';

class ArticleModel  extends ArticleEntity {
   ArticleModel({
    int ? id,
    String ? author,
    String ? title,
    String ? description,
    String ? url,
    String ? urlToImage,
    String ? publishedAt,
    String ? content,
}): super(
     id,
     author,
     title,
     description,
     url,
     urlToImage,
     publishedAt,
     content,
   );

   factory ArticleModel.fromJson(Map < String, dynamic > map) {
     return ArticleModel(
       author: map['author'] ?? "",
       title: map['title'] ?? "",
       description: map['description'] ?? "",
       url: map['url'] ?? "",
       urlToImage: map['urlToImage'] ?? "",
       publishedAt: map['publishedAt'] ?? "",
       content: map['content'] ?? "",
     );
   }
}