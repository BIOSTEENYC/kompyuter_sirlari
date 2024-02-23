import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/home/secrets_page.dart';
import 'package:universal_image/universal_image.dart';
void main(){
  runApp(const MaterialApp(
    home: Runner(),debugShowCheckedModeBanner: false,));
}
class Runner extends StatelessWidget {
  const Runner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/BackgroundH.png"))
        ),
        child: Column(
          children: [
            Expanded(child: UniversalImage("assets/logo.webp")),
            Expanded(flex: 4,child: UniversalImage("assets/icon.webp",scale: 2,)),
            Expanded(child: Draggable(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_upward,size: 45,color: Colors.white,),
                  Text("Kirish uchun ekranni yuqoriga suring",style: TextStyle(fontSize: 35,color: Colors.white),),
                ],
              ),
              feedback: Container(
                width: 30,
                height: 30,
                child: Icon(Icons.arrow_upward,color: Colors.white,size: 30,),
              ),
              childWhenDragging: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white),
                ),
              ),
              onDragEnd: (details) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Secrets()),
                );
              },
            ),
            ),
            const Expanded(child: Text(""))
          ],
        ),
      ),
    );
  }
}
//Secrets()
