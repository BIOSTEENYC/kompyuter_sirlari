import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step15/page2.dart';
class SFifteenPO extends StatefulWidget {
  const SFifteenPO({super.key});
  @override
  State<SFifteenPO> createState() => _SFifteenPOState();
}
class _SFifteenPOState extends State<SFifteenPO> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SFifteenPT()));
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
                image: AssetImage("assets/install/step15/picture1.png"))),
        child: const Padding(
          padding: EdgeInsets.only(top: 45, bottom: 50, right: 30),
        ),
      ),
    );
  }
}
