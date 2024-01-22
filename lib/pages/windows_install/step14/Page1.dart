import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step14/Page2.dart';
class SFourteenPO extends StatefulWidget {
  const SFourteenPO({super.key});
  @override
  State<SFourteenPO> createState() => _SFourteenPOState();
}
class _SFourteenPOState extends State<SFourteenPO> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SFourteenPT()));
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
                image: AssetImage("assets/install/step14/Picture1.png"))),
        child: const Padding(
          padding: EdgeInsets.only(top: 45, bottom: 50, right: 30),
        ),
      ),
    );
  }
}
