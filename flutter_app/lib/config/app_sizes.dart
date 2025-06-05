class AppSizes {
  static final AppSizes _instance = AppSizes._internal();

  factory AppSizes() => _instance;

  AppSizes._internal();

  // Button Styles
  double get buttonMinHeight => 50.h;
  double get buttonMaxWidth => 265.w;

  // Font sizes
  double get fontSizeSmall => 10.sp;
  double get fontSizeNormal => 14.sp;
  double get fontSizeLarge => 18.sp;

  // Spacing
  double get paddingSmall => 8.w;
  double get paddingMedium => 12.w;
  double get paddingLarge => 16.w;

  // Icon sizes
  double get iconSizeSmall => 18.w;
  double get iconSizeNormal => 24.w;
}