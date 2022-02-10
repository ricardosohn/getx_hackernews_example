import 'package:get/get.dart';
import 'package:hacker_news/screens/home/home_provider.dart';

class HomeController extends GetxController {
  final HomeProvider homeProvider = Get.find<HomeProvider>();

  @override
  void onInit() async {
    final topStories = await homeProvider.getTopStories();
    print(topStories);
    final specificStory = await homeProvider.getStoryInfo(topStories.first);
    print(specificStory);
    super.onInit();
  }
}
