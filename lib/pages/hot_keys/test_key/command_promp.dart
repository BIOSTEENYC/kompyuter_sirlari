import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class CommandPromp extends StatelessWidget {
  const CommandPromp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

//------------------------------------------
class MyApp extends StatefulWidget {
  const MyApp({super.key});

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
        title: const Text('Buyruqlar satri ilovasining tezkor tugmalari'),
      ),
      body: ListView.builder(
        itemCount: _lines.length ~/ 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                title: Text(_lines[index * 2]),
                subtitle: _lines.length > index * 2 + 1 ? Text(_lines[index * 2 + 1]) : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
