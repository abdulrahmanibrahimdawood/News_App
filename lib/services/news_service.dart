import 'package:dio/dio.dart';
import 'package:news/models/artical_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  Future<List<ArticalModel>> getNews({required String Que}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?q=$Que&apiKey=20a3afd8e5514ab3aa5bcae29af872ee');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticalModel> articlesList = [];
      for (var article in articles) {
        ArticalModel articalModel = ArticalModel.fromJson(article);
        articlesList.add(articalModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
