import 'package:flutter/material.dart';
import 'package:the_earths_essence/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Earth’s Essence',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}
