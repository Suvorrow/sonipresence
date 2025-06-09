import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Theme Setup: Define Light and Dark Themes
class AppTheme {
  //Singleton instance
  static final AppTheme _instance = AppTheme._inter();

  // Factory constructor to get the singleton instance
  factory AppTheme() => _instance;

  AppTheme._inter();
  //Light Theme
  static ThemeData get light => ThemeData.light().copyWith(
    colorScheme: const ColorScheme.light().copyWith(
      primary: Colors.blueGrey,
      secondary: Colors.indigoAccent,
      surface: Color(0xFF363232),
      onSurface: Colors.white60,
    ),
    textTheme: _textTheme,
  );

  // Dark Theme
  static ThemeData get dark => ThemeData.dark().copyWith(
    colorScheme: const ColorScheme.dark().copyWith(
      primary: Colors.white60,
      secondary: Colors.deepPurple,
      surface: Colors.black45,
      onSurface: Colors.white38,
    ),
    textTheme: _textTheme,
  );

  // Custom TextTheme
  static TextTheme get _textTheme {
    return const TextTheme(
      bodyMedium: TextStyle(color: Colors.yellow),
      titleLarge: TextStyle(fontSize: 20),
    );
  }
}

class AppSizes {
  static final AppSizes _instance = AppSizes._internal();

  factory AppSizes() => _instance;

  AppSizes._internal();

  // Button styles
  double buttonMinHeight = 60.h;
  double buttonMaxWidth = 320.w;

  // Icon sizes
  double iconSizeSmall = 18.w;
  double iconSizeNormal = 24.w;
}

class AppTextSizes {
  static final AppTextSizes _instance = AppTextSizes._internal();

  factory AppTextSizes() => _instance;

  AppTextSizes._internal();

  // Headlines
  double get headline => 24.sp;

  // Subheadings
  double get subheading => 20.sp;

  // Body Text
  double get body => 16.sp;

  // Small Text
  double get small => 14.sp;
}

class AppSpacing {
  static final AppSpacing _instance = AppSpacing._internal();

  factory AppSpacing() => _instance;

  AppSpacing._internal();
  // Padding
  double get paddingSmall => 8.w;
  double get paddingMedium => 12.w;
  double get paddingLarge => 20.w;

  // Margins
  double get marginSmall => 4.w;
  double get marginMedium => 12.w;
  double get marginLarge => 18.w;

  // Vertical spacing
  double get verticalSmall => 4.h;
  double get verticalMedium => 8.h;
  double get verticalLarge => 12.h;
}

//Extension: Make accessing theme colors easier in widgets
extension ThemeColors on BuildContext {
  Color get primary => Theme.of(this).colorScheme.primary;
  Color get background => Theme.of(this).colorScheme.surface;
  Color get foreground => Theme.of(this).textTheme.bodyMedium?.color ?? Colors.black26;
  Color get accent => Theme.of(this).colorScheme.secondary;
  Color get cardBackground => Theme.of(this).cardColor;

  double get headline => AppTextSizes().headline;
  double get subheading => AppTextSizes().subheading;
  double get body => AppTextSizes().body;
  double get small => AppTextSizes().small;

  double get paddingSmall => AppSpacing().paddingSmall;
  double get paddingMedium => AppSpacing().paddingMedium;
  double get paddingLarge => AppSpacing().paddingLarge;

  double get verticalSmall => AppSpacing().verticalSmall;
  double get verticalMedium => AppSpacing().verticalMedium;
  double get verticalLarge => AppSpacing().verticalLarge;
}