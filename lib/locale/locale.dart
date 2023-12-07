import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {"1": "الصفحة الرئيسية", "2": "عربى", "3": "انجليزى"},
        "en": {"1": "Home Page", "2": "Arabic", "3": "English"}
      };
}
