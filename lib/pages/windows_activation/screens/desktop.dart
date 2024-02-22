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
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(title: const Text("Windows 10 faollashtirish")),
      body:  const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              child: ListTile(
                title: Text("qidiruv paneliga power shell deb yozib, Power Shell ilovasini oching"),
                titleTextStyle: TextStyle(fontSize: 30,color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              child: ListTile(
                titleTextStyle: TextStyle(color: Colors.black,fontSize: 30),
                title: Text("Bu kodni kiring:"),
                subtitle: Text("  irm [4](https://massgrave.dev/get) | iex   "),subtitleTextStyle: TextStyle(backgroundColor: Colors.lightGreenAccent,color: Colors.black,fontSize: 25),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
