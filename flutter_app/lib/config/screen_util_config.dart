import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class ScreenUtilConfig {
  // Private constructor
  const ScreenUtilConfig._inner({
    required this.designSize,
    required this.minTextAdapt,
    required this.splitScreenMode,
  });

  // Singleton instance
  static final ScreenUtilConfig _instance = ScreenUtilConfig._inner(
    designSize: const Size(388, 844),
    minTextAdapt: true,
    splitScreenMode: true,
  );

  factory ScreenUtilConfig() => _instance;

  final Size designSize;
  final bool minTextAdapt;
  final bool splitScreenMode;
}

// Constant export instance of the config
final screenUtilConfig = ScreenUtilConfig();
