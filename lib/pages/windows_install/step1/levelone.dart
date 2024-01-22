import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step1/leveltwo.dart';
class LOne extends StatefulWidget {
  const LOne({super.key});
  @override
  State<LOne> createState() => _LOneState();
}
class _LOneState extends State<LOne> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LTwo()));
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/install/step1/page1.png"),
        ),
      ),
    ));
  }
}
