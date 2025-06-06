import 'package:flutter/material.dart';
import 'package:sonipresence/config/config.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sonipresence'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to Sonipresence',
          style: AppSizes.fontSizeLarge,
        ),
      ),
    );
  }
}