import 'package:news_app_clean_architecture/config/constants/constants.dart';
import 'package:retrofit/http.dart';

part 'news_api_service.g.dart'

@RestApi(baseUrl: newsAPIBaseURL)
abstract class NewsApiService {

}