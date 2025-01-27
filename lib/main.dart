import 'package:flutter/material.dart';
import 'package:test_food_order_app/presentation/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF067B96),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
