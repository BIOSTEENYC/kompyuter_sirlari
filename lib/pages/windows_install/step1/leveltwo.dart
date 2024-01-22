import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../step2/page1.dart';

class LTwo extends StatefulWidget {
  const LTwo({super.key});

  @override
  State<LTwo> createState() => _LTwoState();
}

class _LTwoState extends State<LTwo> {
  final player = AudioPlayer();

  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }

  @override
  void initState() {
    super.initState();
    playAudioFromAsset("install/step1/audio.mp3");

  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/install/step1/page2.png"))),
        child: const Text(
          "Kompyuter operatsion tizimida muammo yuzaga keldi. Muammoni bartaraf etish uchun Windows tizimini qayta yozish kerak. Windows tizimini yozish uchun qo'shimcha kompyuter kerak bo'ladi. Ombor tugmasiga bosib, bizni omborxonamizdagi kompyuterimizni olishingiz mumkin",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.height / 2,
                    color: Colors.deepPurple,
                    child: Center(
                      child: InkWell(
                          onTap: () async {
                            await player.stop(); // audioni to'xtatish
                            var contextToUse = context; // contextni saqlash
                            Navigator.pushReplacement(
                                contextToUse,
                                MaterialPageRoute(
                                    builder: (_) => const StepTwoPageOne()
                                )
                            ); // keyingi sahifaga o'tkazish
                          },
                          child: Image.asset("assets/install/step1/store.png")),
                    ),
                  ),
                );
              });
        },
        child: const Column(
          children: [
            Icon(Icons.add),
            Text("Ombor"),
          ],
        ),
      ),
    );
  }
}
