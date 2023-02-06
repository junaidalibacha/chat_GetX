import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/utils/assets_manager.dart';

class WelcomeState {
  var index = 0.obs;
  var pageController = PageController(initialPage: 0).obs;
  final List<String> imgs = [
    ImagesManager.onboarding1,
    ImagesManager.onboarding2,
    ImagesManager.onboarding3,
  ];
}
