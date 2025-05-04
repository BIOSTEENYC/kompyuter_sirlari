import 'package:flutter/material.dart';
import 'splash_screen.dart';

void main() {
  runApp(const KompyuterSirlariApp());
}

class KompyuterSirlariApp extends StatelessWidget {
  const KompyuterSirlariApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kompyuter sirlari',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
