import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class CommandPromp extends StatelessWidget {
  const CommandPromp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

//------------------------------------------
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _lines = [];

  @override
  void initState() {
    super.initState();
    loadAsset().then((text) {
      setState(() {
        _lines = parseLines(text);
      });
    });
  }

  Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/hotkeys/cmd.txt');
  }

  List<String> parseLines(String text) {
    return text.split('\n');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text('Buyruqlar satri ilovasining tezkor tugmalari'),
      ),
      body: ListView.builder(
        itemCount: _lines.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_lines[index]),
          );
        },
      ),
    );
  }
}
