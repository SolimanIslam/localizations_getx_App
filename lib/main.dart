import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localizations_getx/locale/locale.dart';
import 'package:localizations_getx/locale/localeController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MyLocaleController controller = Get.put(MyLocaleController());
    return GetMaterialApp(
        title: 'Flutter Demo',
        // locale: Get.deviceLocale,
        locale: const Locale("en", "US"),
        translations: MyLocale(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("1".tr),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      controller.changeLocale("ar");
                    },
                    child: Text("2".tr)),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      controller.changeLocale('en');
                    },
                    child: Text("3".tr)),
              ],
            ),
          ),
        ));
  }
}
