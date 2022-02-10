import 'package:get/get.dart';
import 'package:hacker_news/screens/home/home_model.dart';
import 'package:hacker_news/screens/home/home_provider.dart';

class HomeController extends GetxController {
  final HomeProvider homeProvider = Get.find<HomeProvider>();
  Rx<NewsItem> item = NewsItem().obs;
  bool initialized = false;

  @override
  void onInit() async {

    final topStories = await homeProvider.getTopStories();
    print(topStories);

    item.value = await homeProvider.getStoryInfo(topStories.first);
    print(item);
    initialized = true;
    super.onInit();
  }
}
