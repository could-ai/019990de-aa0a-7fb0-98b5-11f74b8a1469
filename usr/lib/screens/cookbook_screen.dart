import 'package:flutter/material.dart';

class CookBookScreen extends StatelessWidget {
  const CookBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'CookBook AI - Recipe Discovery',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
