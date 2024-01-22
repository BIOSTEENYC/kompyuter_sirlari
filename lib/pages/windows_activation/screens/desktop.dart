import 'package:flutter/material.dart';

class ActivatiorScreenSaver extends StatefulWidget {
  const ActivatiorScreenSaver({super.key});

  @override
  State<ActivatiorScreenSaver> createState() => _ActivatiorScreenSaverState();
}

class _ActivatiorScreenSaverState extends State<ActivatiorScreenSaver> {
  @override
  Widget build(BuildContext context) {
    return const Desktop();
  }
}

class Desktop extends StatefulWidget {
  const Desktop({super.key});

  @override
  State<Desktop> createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("Windows 10 faollashtirish")),
      body:  Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                  "qidiruv paneliga power shell deb yozib, Power Shell ilovasini oching.)",style: TextStyle(color: Colors.white,fontSize: 25),),
            ),
          ),
          SizedBox(height: 3,),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Text(
                  "Bu kodni kiring: ",style: TextStyle(color: Colors.white,fontSize: 25),),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: Text("irm [4](https://massgrave.dev/get) | iex",style: TextStyle(color: Colors.white,backgroundColor: Colors.black,fontSize: 25),)
            ),
          ),
          Expanded(flex:4,child: SizedBox(),)
        ],
      ),
    );
  }
}
