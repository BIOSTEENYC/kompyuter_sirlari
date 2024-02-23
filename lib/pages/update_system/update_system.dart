import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:universal_image/universal_image.dart';

class UpdateSytem extends StatefulWidget {
  const UpdateSytem({super.key});

  @override
  State<UpdateSytem> createState() => _UpdateSytemState();
}

class _UpdateSytemState extends State<UpdateSytem> {
  List data = [];
  @override
  void initState() {
    super.initState();
    loadData();
  }
  void loadData()async{
    String dataJson = await DefaultAssetBundle.of(context).loadString("assets/systemupdate/data.json");
    setState(() {
      data = jsonDecode(dataJson);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tizimni yangilash"),),
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
                  subtitle: UniversalImage(data[index]['rasm']),
                ),
              ),
            );
          }),
    );
  }
}
