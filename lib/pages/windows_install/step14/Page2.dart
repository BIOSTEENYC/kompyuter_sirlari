import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step15/Page1.dart';
class SFourteenPT extends StatefulWidget {
  const SFourteenPT({super.key});
  @override
  State<SFourteenPT> createState() => _SFourteenPTState();
}
class _SFourteenPTState extends State<SFourteenPT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SFifteenPO()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step14/Picture2.png"))),
          child: const Padding(
            padding: EdgeInsets.only(top: 45, bottom: 50, right: 30),
          ),
        ),
      ),
    );
  }
}
