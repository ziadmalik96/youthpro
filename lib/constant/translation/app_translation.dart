import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppTranslation extends Translations {
  static final locale = Locale('en_US', 'US');

  static final fallbackLocale = Locale('ur_PK', 'PK');

  static final langs = [
    'English',
    'اردو',
  ];

  static final locales = [
    Locale('en_US', 'US'),
    Locale('ur_PK', 'PK'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'ur_PK': ur,
  };

  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale!;
  }
}

final Map<String, String> enUS = {
  'app_name': 'Nippon Dost',

 };

final Map<String, String> ur = {
  'app_name': 'نپون دوست',
};
