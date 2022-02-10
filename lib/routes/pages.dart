import 'package:get/get.dart';
import 'package:hacker_news/screens/home/home_bindings.dart';
import 'package:hacker_news/screens/home/home_page.dart';

part './routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.initial,
        page: () => const HomePage(),
        binding: HomeBindings()),
  ];
}
