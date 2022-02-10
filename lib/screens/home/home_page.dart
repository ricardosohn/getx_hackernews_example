import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Title"),
        ),
        body: Center(
          child: Obx( () => 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                _buildTitle(controller.item.value.title.toString())
              ],
            ),
          ),
        ),
    );
  }

  _buildTitle(final String title) {
    if (controller.initialized && title.isNotEmpty) {
      return Text(controller.item.value.title.toString());
    } else {
      return Text("Nao inicializado");
    }
  }
}
