import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step12/page1.dart';
class SElevenPO extends StatefulWidget {
  const SElevenPO({super.key});
  @override
  State<SElevenPO> createState() => _SElevenPOState();
}
class _SElevenPOState extends State<SElevenPO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step11/audio.mp3");
    super.initState();
  }
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/install/step3/picture1.png"))),
        child: Padding(
          padding: const EdgeInsets.only(top: 45, bottom: 50, right: 30),
          child: Row(
            children: [
              const Expanded(flex: 1, child: SizedBox()),
              const Expanded(flex: 1, child: SizedBox(child: Text("Rufus dasturiga kiring",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),))),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/install/step11/Picture1.png")),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          height: 1,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 120),
                            const Text(
                              "Windows_10-22H2-x64.iso",
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            TextButton(
                              child: const Text("Rufus-3.14p.exe"),
                              onPressed: () async{
                                await player.stop();
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const STwelvePO()));
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
