import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step15/Page3.dart';
class SFifteenPT extends StatefulWidget {
  const SFifteenPT({super.key});
  @override
  State<SFifteenPT> createState() => _SFifteenPTState();
}
class _SFifteenPTState extends State<SFifteenPT> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SFifteenPTh()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/install/step15/picture2.png"))),
        child: const Padding(
          padding: EdgeInsets.only(top: 45, bottom: 50, right: 30),
        ),
      ),
    );
  }
}
