import 'dart:convert';

import 'package:flutter/material.dart';

class BackUpRestore extends StatefulWidget {
  const BackUpRestore({super.key});

  @override
  State<BackUpRestore> createState() => _BackUpRestoreState();
}

class _BackUpRestoreState extends State<BackUpRestore> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData()async{
    String dataJson = await DefaultAssetBundle.of(context).loadString("assets/backupeandrstore/data.json");
    setState(() {
      data = jsonDecode(dataJson);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text("Fayllarni saqlash va tiklash"),
      ),
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
