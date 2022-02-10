import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/pages.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowMaterialGrid: false,
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fade,
    themeMode: ThemeMode.light,
    initialRoute: Routes.initial,
    getPages: AppPages.pages,
  ));
}
