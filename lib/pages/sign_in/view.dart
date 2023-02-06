import 'package:chat_dbestech/common/style/color.dart';
import 'package:chat_dbestech/common/utils/assets_manager.dart';
import 'package:chat_dbestech/common/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class SingInPage extends GetView<SignInController> {
  const SingInPage({super.key});

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // shrinkWrap: true,
          // padding: EdgeInsets.zero,
          children: [
            buildVerticleSpace(84),
            SizedBox(
              child: Image.asset(
                ImagesManager.logoImage,
                height: getProportionateScreenWidth(76),
                width: getProportionateScreenWidth(76),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(15),
              ),
              child: Text(
                "Let's chat",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: getProportionateScreenHeight(28),
                  height: 1,
                ),
              ),
            ),
            const Spacer(),
            Text(
              'Sign in with social networks',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColor.primaryText,
                fontSize: getProportionateScreenHeight(26),
                fontWeight: FontWeight.w400,
              ),
            ),
            buildVerticleSpace(30),
            MaterialButton(
              color: AppColor.accentColor,
              height: getProportionateScreenHeight(100),
              minWidth: getProportionateScreenWidth(230),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getProportionateScreenHeight(25),
                ),
              ),
              onPressed: () {
                controller.handleSignIn();
              },
              child: Text(
                'Google Login',
                style: TextStyle(
                  color: AppColor.scaffoldBackground,
                  fontSize: getProportionateScreenHeight(26),
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
            buildVerticleSpace(280),
          ],
        ),
      ),
    );
  }
}
