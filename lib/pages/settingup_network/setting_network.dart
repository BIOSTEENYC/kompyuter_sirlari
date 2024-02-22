import 'dart:convert';

import 'package:flutter/material.dart';

class SettingUp extends StatefulWidget {
  const SettingUp({super.key});

  @override
  State<SettingUp> createState() => _SettingUpState();
}

class _SettingUpState extends State<SettingUp> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData()async{
    String dataJson = await DefaultAssetBundle.of(context).loadString("assets/setting_up_netowrk/data.json");
    setState(() {
      data = jsonDecode(dataJson);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(title: const Text("Tarmoq ulanishlarini sozlash"),),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 18,
                shadowColor: Colors.white,
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
