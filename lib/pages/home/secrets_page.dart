import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:universal_image/universal_image.dart';

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
      drawer: Draver(),
      body: const AppBody(),
    );
  }
}

class Draver extends StatelessWidget {
  const Draver({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UniversalImage("assets/allapps/my_logo.jpg"),
          FittedBox(child: Material(borderRadius: BorderRadius.circular(20),child: Text("Hayitboyev Abdulhakim\nFlutter dasturchi\n\n Ilovaning yangi versiyasida \nnimalar b'lishini istaysiz?\n telegramdan yozing",style: TextStyle(fontSize: 30,),textAlign: TextAlign.center,))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(child: Icon(CupertinoIcons.paperplane,color: Colors.white,),backgroundColor: Colors.blue,),
              Text("Biosteenyc")
            ],
          ),

        ],
      ),
    );
  }
}
