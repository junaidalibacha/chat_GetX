import 'package:get/get.dart';

import '../services/services.dart';

class ConfigStore extends GetxController {
  static ConfigStore get to => Get.find();

  bool isFirstOpen = false;

  Future<bool> saveAlreadyOpen() {
    return StorageService.to.setBool('device_first_open', true);
  }
}
