import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class InstallScreenSaver extends StatelessWidget {
  const InstallScreenSaver({super.key});
  @override
  Widget build(BuildContext context) {
    return const Simulator();
  }
}

class Simulator extends StatefulWidget {
  const Simulator({super.key});

  @override
  State<Simulator> createState() => _SimulatorState();
}

class _SimulatorState extends State<Simulator> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData()async{
    String dataJson = await DefaultAssetBundle.of(context).loadString("assets/install/data.json");
    setState(() {
      data = jsonDecode(dataJson);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Windows 10 o'rnatish"),
      ),
      body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 6,
                borderRadius: BorderRadius.circular(20),
                child: ListTile(
                  style: ListTileStyle.drawer,
                  titleTextStyle: const TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.normal),
                  subtitleTextStyle: const TextStyle(fontSize: 25,color: Colors.black),
                  title: Text(data[index]['title']),
                  subtitle: Text(data[index]['subtitle']),
                ),
              ),
            );
          }),
    );
  }
}