import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'constant/binding/app_binding.dart';
import 'constant/colors.dart';
import 'constant/routes/routes_app.dart';
import 'constant/translation/app_translation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  dialogBox();
  runApp(const MyApp());
}
void dialogBox() {
  EasyLoading.instance
    ..backgroundColor = white
    ..progressColor = black
    ..loadingStyle = EasyLoadingStyle.custom
    ..radius = 10
    ..textColor = black
    ..indicatorColor = black
    ..dismissOnTap = true
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..indicatorSize = 100;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'app_name'.tr,
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      translations: AppTranslation(),
      locale: AppTranslation.locale,
      fallbackLocale: AppTranslation.fallbackLocale,
      builder: EasyLoading.init(),
      initialRoute: Routes.splash,
      unknownRoute: Routes.unknownRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: Routes.pages,
    );
  }
}
