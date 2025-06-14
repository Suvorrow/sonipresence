import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'config/screen_util_config.dart';
import 'app/app_widget.dart';
import '../app/routes.dart';

void main() {
  final app = SonipresenceApp(
    screenUtilConfig: screenUtilConfig,
    router: router,
  );
  runApp(ProviderScope(child: app));
}