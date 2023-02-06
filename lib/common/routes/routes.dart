import 'package:chat_dbestech/pages/sign_in/index.dart';
import 'package:chat_dbestech/pages/welcome/index.dart';
import 'package:get/get.dart';

import 'pages.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(
      name: AppPages.initial,
      page: () => const WelcomePage(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppPages.signIn,
      page: () => const SingInPage(),
      binding: SingInBinding(),
    ),
  ];
}
