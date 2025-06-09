import 'package:flutter/material.dart';
import '../config/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonipresence'),
        centerTitle: true,
        backgroundColor: context.primary,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(AppSpacing().paddingMedium),
          child: Text(
            'Welcome to Sonipresence',
            style: TextStyle(
              fontSize: AppTextSizes().headline,
              color: context.foreground,
            ),
          ),
        ),
      ),
    );
  }
}