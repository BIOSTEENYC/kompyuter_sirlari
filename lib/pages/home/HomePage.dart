import 'package:flutter/material.dart';

import 'body.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        toolbarHeight: 80,
        excludeHeaderSemantics: true,
        shadowColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.white,fontSize: 20),
        centerTitle: true,
        title: FittedBox(fit: BoxFit.contain,child: const Text("Kompyuter sirlari")),
        backgroundColor: Colors.black45,
      ),
      body: AppBody(),
    );
  }
}