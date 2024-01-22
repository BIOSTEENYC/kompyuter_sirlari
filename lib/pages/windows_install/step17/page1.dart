import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step18/page1.dart';
class SSeventeenPO extends StatefulWidget {
  const SSeventeenPO({super.key});
  @override
  State<SSeventeenPO> createState() => _SSeventeenPOState();
}
class _SSeventeenPOState extends State<SSeventeenPO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onLongPress: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SEighteenPO()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step17/Picture1.png"))),
          child: const Text("O'chirish tugmasini bosing va F12 tugmasini bossib turing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white,fontSize: 20),)
        ),
      ),
    );
  }
}
