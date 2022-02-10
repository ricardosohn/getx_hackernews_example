import 'package:get/get.dart';
import 'package:hacker_news/screens/home/home_controller.dart';
import 'package:hacker_news/screens/home/home_provider.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeProvider());
    Get.lazyPut(() => HomeController());
  }
}
