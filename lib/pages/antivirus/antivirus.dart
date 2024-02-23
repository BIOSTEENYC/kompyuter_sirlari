import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:universal_image/universal_image.dart';

class Antivirus extends StatefulWidget {
  const Antivirus({super.key});

  @override
  _AntivirusState createState() => _AntivirusState();
}

class _AntivirusState extends State<Antivirus> {
  List<String> antivirusLines = [];
  List<String> rasmLines = [];

  Future<void> loadAntivirus() async {
    String antivirus = await rootBundle.loadString('assets/antivirus/antivirus.json');
    var jsonResult = json.decode(antivirus);
    setState(() {
      antivirusLines = List<String>.from(jsonResult['steps'].map((item) => item['description']));
      rasmLines = List<String>.from(jsonResult['steps'].map((item) => item['image']));
    });
  }

  @override
  void initState() {
    loadAntivirus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        shadowColor: Colors.red,
        titleTextStyle: const TextStyle(color: Colors.blueAccent,fontSize: 20),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text('Antivirus o\'rnatish'),
      ),
      body: ListView.builder(
        itemCount: antivirusLines.length,
        itemBuilder: (context, index) {
          if (index < antivirusLines.length && index < rasmLines.length) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(antivirusLines[index],style: const TextStyle(color: Colors.black,fontSize: 25),),
                    ),
                    UniversalImage(rasmLines[index]),
                  ],
                ),
              ),
            );
          } else {
            return const CircularProgressIndicator(); // Yuklanayotgan vaqtida aylanadigan animatsiyani ko'rsatish
          }
        },
      ),
    );
  }
}
