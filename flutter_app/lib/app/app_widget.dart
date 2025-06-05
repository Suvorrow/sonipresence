import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../config/config.dart';
import 'routes.dart';

final _router = router;

class SonipresenceApp extends StatelessWidget {
  const SonipresenceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: screenUtilConfig.designSize,
      minTextAdapt: screenUtilConfig.minTextAdapt,
      splitScreenMode: screenUtilConfig.splitScreenMode,
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: _router,
          title: 'Sonipresence',
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}