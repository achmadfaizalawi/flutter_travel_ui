import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/bottom_navigation_bar/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Travel App',
      home: BottomNavigation()
    );
  }
}