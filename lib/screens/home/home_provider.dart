import 'package:hacker_news/core/connectors/base_connector.dart';
import 'package:hacker_news/screens/home/home_model.dart';

class HomeProvider extends BaseConnector {
  Future<List<dynamic>> getTopStories() async {
    final response = await get("/topstories.json");

    print(response.body);
    if (response.isOk) {
      return response.body;
    } else {
      return <dynamic>[];
    }
  }

  Future<NewsItem> getStoryInfo(final int id) async {
    final response = await get("/item/$id.json");
    print(response.body);
    if (response.isOk) {
      return NewsItem.fromMap(response.body);
    } else {
      throw Exception();
    }
  }
}