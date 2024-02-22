import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/connect_printer/data.dart';

class Printer extends StatefulWidget {
  const Printer({super.key});

  @override
  State<Printer> createState() => _PrinterState();
}

class _PrinterState extends State<Printer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text("Printerlarni ulash va sozlash"),
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/printer/printer.png"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.white, BlendMode.colorBurn))
        ),
        child: ListView.builder(
            itemCount: sarlavha.length,
            itemBuilder: (BuildContext context, int index){
              return Padding(
                padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 14,bottom: 14),
                child: Material(
                  color: Colors.white,
                  elevation: 14,
                  borderRadius: BorderRadius.circular(20),
                  child: ListTile(
                    title: Text(sarlavha[index]),
                    subtitle: Text(matn[index]),
                    subtitleTextStyle: const TextStyle(color: Colors.black,fontSize: 25),
                    titleTextStyle: const TextStyle(color: Colors.black,fontSize: 30),
                  ),
                ),
              );
            }),
      )

    );
  }
}
