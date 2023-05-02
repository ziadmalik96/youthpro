import 'package:get/get.dart';
import 'package:youthpro/screens/views/understand_health.dart';
import '../../screens/views/splash_view.dart';
import '../view/unknown_routes.dart';

class Routes {
  static const splash = '/splash';
  static const health = '/health';
  static const unknown = '/unknown';

  static final List<GetPage> pages = [
    GetPage(
      name: splash,
      page: ()=> const Splash()
    ),
    GetPage(
      name: health,
      page: ()=> const UnderstandHealthView()
    )
  ];
  static GetPageRoute get unknownPageRoute => GetPageRoute(
    page: () => const UnknownRoute(),
  );

  static GetPage get unknownRoute => GetPage(
    name: unknown,
    page: () => const UnknownRoute(),
  );
}