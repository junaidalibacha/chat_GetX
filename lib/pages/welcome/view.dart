import 'package:chat_dbestech/common/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            onPageChanged: (value) {
              controller.changePage(value);
            },
            controller: controller.state.pageController.value,
            physics: const ClampingScrollPhysics(),
            children: List.generate(
              3,
              (index) => Container(
                height: SizeConfig.screenHeight,
                width: SizeConfig.screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      controller.state.imgs[index],
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: index == 2
                    ? Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Positioned(
                            bottom: SizeConfig.screenHeight * 0.09,
                            child: ElevatedButton(
                              onPressed: () => controller.handleSignIn(),
                              child: const Text('Login'),
                            ),
                          ),
                        ],
                      )
                    : null,
              ),
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: EdgeInsets.all(SizeConfig.screenWidth * 0.02) +
                      EdgeInsets.only(bottom: SizeConfig.screenWidth * 0.06),
                  height: SizeConfig.screenWidth * 0.03,
                  width: controller.state.index.value == index
                      ? SizeConfig.screenWidth * 0.06
                      : SizeConfig.screenWidth * 0.03,
                  decoration: BoxDecoration(
                    color: controller.state.index.value == index
                        ? Colors.blue
                        : Colors.white,
                    borderRadius:
                        BorderRadius.circular(SizeConfig.screenWidth * 0.03),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
