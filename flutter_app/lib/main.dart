import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/screen_util_config.dart';
import 'app/app_widget.dart';
import '../app/routes.dart';

void main() {
  runApp(
    ProviderScope(
      child: SonipresenceApp(
        screenUtilConfig: screenUtilConfig,
        router: router,
      ),
    ),
  );
}