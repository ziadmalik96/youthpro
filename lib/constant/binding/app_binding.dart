import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:youthpro/screens/controllers/app_controller.dart';

///Initialize our app services that it needs at startup.
///use this class as the 'initialBinding property of GetMaterialApp,
class AppBinding extends Bindings {
  bool useMockRepositories = false;

  @override
  void dependencies() async {
    if (!kIsWeb) {}

    Get.put<AppController>(AppController());
  }
}