import 'package:flutter/material.dart';
import 'dart:convert';
class VoiceAssistants extends StatefulWidget {
  const VoiceAssistants({super.key});

  @override
  State<VoiceAssistants> createState() => _VoiceAssistantsState();
}

class _VoiceAssistantsState extends State<VoiceAssistants> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData()async{
    String dataJson = await DefaultAssetBundle.of(context).loadString("assets/voice_assistants/data.json");
    setState(() {
      data = jsonDecode(dataJson);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ovozli yordamchilar bilan ishlash"),),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(20),
                child: ListTile(
                  title: Text(data[index]['matn']),
                  subtitle: Image.asset(data[index]['rasm']),
                ),
              ),
            );
          }),
    );
  }
}
