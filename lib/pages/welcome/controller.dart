import 'package:chat_dbestech/common/routes/pages.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final state = WelcomeState();
  // final pageController = PageController(initialPage: 0);

  void changePage(int index) async {
    state.index.value = index;
  }

  void handleSignIn() async {
    // await ConfigStore.to.saveAlready();
    Get.offAndToNamed(AppPages.signIn);
  }
}
