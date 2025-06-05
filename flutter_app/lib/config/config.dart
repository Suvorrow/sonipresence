import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ScreenUtilConfig {
  final Size designSize;
  final bool minTextAdapt;
  final bool splitScreenMode;

  const ScreenUtilConfig({
    required this.designSize,
    required this.minTextAdapt,
    required this.splitScreenMode,
  });
}

// A constant instance of the config
const screenUtilConfig = ScreenUtilConfig(
  designSize: Size (455, 812),
  minTextAdapt: true,
  splitScreenMode: true,
);

class AppSizes {
  // Button Styles
  static double buttonMinHeight = 60.h;
  static double buttonMaxWidth = 320.w;

  // Font sizes
  static double fontSizeSmall = 14.sp;
  static double fontSizeNormal = 16.sp;
  static double fontSizeLarge = 20.sp;

  // Spacing
  static double paddingSmall = 8.w;
  static double paddingMedium = 16.w;
  static double paddingLarge = 20.w;

  //Icon sizes
  static double iconSizeSmall = 18.w;
  static double iconSizeNormal = 24.w;
}

class AppTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white60,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white12,
  );
}