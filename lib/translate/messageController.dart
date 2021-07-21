import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MessageController extends GetxController {
  void chaneMassage(languageCode, countryCode) {
    Get.updateLocale(Locale(languageCode, countryCode));
  }
}
