import 'dart:convert';

import 'package:flutter/material.dart';

class CustomizeDesktop extends StatefulWidget {
  const CustomizeDesktop({super.key});

  @override
  State<CustomizeDesktop> createState() => _CustomizeDesktopState();
}

class _CustomizeDesktopState extends State<CustomizeDesktop> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData()async{
    String dataJson = await DefaultAssetBundle.of(context).loadString("assets/customize/data.json");
    setState(() {
      data = jsonDecode(dataJson);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ish stolini moslashtirish"),
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
                  titleTextStyle: const TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
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
