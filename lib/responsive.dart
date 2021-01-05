import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double defaultSize;
  static double screenHeight;
  static double screenWidth;
  static  Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData=MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = MediaQuery.of(context).size.width;
    defaultSize = orientation == Orientation.landscape
        ? screenHeight * .024
        : screenWidth * .024;

  }}
