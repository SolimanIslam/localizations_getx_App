import 'dart:ui';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {
  void changeLocale(String langCode) {
    Locale mylocale = Locale(langCode);
    Get.updateLocale(mylocale);
  }
}
