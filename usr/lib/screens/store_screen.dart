import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to The Earth’s Essence Store!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
