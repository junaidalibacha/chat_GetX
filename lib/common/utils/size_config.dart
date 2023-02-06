import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late Orientation orientation;
  static late double screenWidth;
  static late double screenHeight;
  // static late double defaultSize;
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;

  void init(BuildContext context) async {
    _mediaQueryData = MediaQuery.of(context);
    orientation = _mediaQueryData.orientation;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

// Get the proportionate height as per screen size = ScreenUtils h,sp,r
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

// Get the proportionate height as per screen size = ScreenUtils w
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}

SizedBox buildVerticleSpace(double height) {
  return SizedBox(
    height: getProportionateScreenHeight(height),
  );
}

SizedBox buildHorizontalSpace(double width) {
  return SizedBox(
    height: getProportionateScreenWidth(width),
  );
}
