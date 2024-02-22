import 'dart:async';
import 'package:flutter/material.dart';

import '../../home/home_page.dart';
class STwentyNine extends StatefulWidget {
  const STwentyNine({super.key});
  @override
  State<STwentyNine> createState() => _STwentyNineState();
}
class _STwentyNineState extends State<STwentyNine> {
  int _imageIndex = 1;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _imageIndex++;
        if (_imageIndex > 11) {
          _imageIndex = 11;
          timer.cancel();
        }
      });
    });
  }
  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const HomePage()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step27/Picture$_imageIndex.png"))),
        ),
      ),
    );
  }
}
