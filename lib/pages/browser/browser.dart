import 'package:flutter/material.dart';

import 'browser_notes.dart';

class Browser extends StatelessWidget {
  const Browser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Browserlarni o'rnatish va sozlash"),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
          itemCount: browserTitles.length,
          itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Material(
            elevation: 12,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: ListTile(
              title: Text(browserTitles[index]),
              subtitle: Text(browserSubtitles[index]),
            ),
          ),
        );
      }),
    );
  }
}
