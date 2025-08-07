import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1200;
  static const double tablet = 800;

  static late double Width;
  static late double Height;

  static init(BuildContext context) {
    Width = MediaQuery.sizeOf(context).width;
    Height = MediaQuery.sizeOf(context).height;
  }
}
