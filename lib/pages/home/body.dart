import 'package:flutter/material.dart';

import 'lists.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
        itemCount: texts.length,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                title: Text(textAlign: TextAlign.center,texts[index],style: const TextStyle(fontSize: 30),),
                subtitle: CircleAvatar(
                  backgroundColor: Colors.blue,
                    radius: 80,
                    child: Image.asset(images[index],fit: BoxFit.fill,)),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>router[index]));
                },
              ),
            ),
          );
        });
  }
}
