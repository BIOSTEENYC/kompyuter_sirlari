import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/home/secrets_page.dart';
void main(){
  runApp(const MaterialApp(
    home: Runner(),debugShowCheckedModeBanner: false,));
}
class Runner extends StatelessWidget {
  const Runner({super.key});

  @override
  Widget build(BuildContext context) {
    return const Secrets();
  }
}




