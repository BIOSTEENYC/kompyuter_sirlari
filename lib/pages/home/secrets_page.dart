import 'package:flutter/material.dart';

import 'body.dart';
class Secrets extends StatefulWidget {
  const Secrets({super.key});

  @override
  State<Secrets> createState() => _SecretsState();
}

class _SecretsState extends State<Secrets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        toolbarHeight: 80,
        excludeHeaderSemantics: true,
        shadowColor: Colors.white,
        titleTextStyle: const TextStyle(color: Colors.white,fontSize: 20),
        centerTitle: true,
        title: const FittedBox(fit: BoxFit.contain,child: Text("Kompyuter sirlari")),
        backgroundColor: Colors.black45,
      ),
      body: const AppBody(),
    );
  }
}