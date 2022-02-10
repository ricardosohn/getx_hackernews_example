import 'package:get/get.dart';

class BaseConnector extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 16);
    httpClient.baseUrl = "https://hacker-news.firebaseio.com/v0";
    super.onInit();
  }
}
