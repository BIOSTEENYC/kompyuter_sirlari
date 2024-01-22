import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step5/page1.dart';
class StepFourPageOne extends StatefulWidget {
  const StepFourPageOne({super.key});
  @override
  State<StepFourPageOne> createState() => _StepFourPageOneState();
}
class _StepFourPageOneState extends State<StepFourPageOne> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step4/audio.mp3");
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
              const Expanded(
                  flex: 1,
                  child: SizedBox(child: const Text("Rufus Download bo'limini toping va u yerdan rufus-4,3p.exe portable faylini bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),),)),
              const Expanded(
                  flex: 1,
                  child: SizedBox()),
              Expanded(
                flex: 1,
                  child: InkWell(
                    onTap: ()async{
                      await player.stop(); // audioni to'xtatish
                      var contextToUse = context;
                      Navigator.pushReplacement(
                          contextToUse,
                           MaterialPageRoute(builder: (_)=>const SFivePO()));
                    },
                    child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/install/step4/Picture1.png")),
                ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                    child: TextField(
                                      decoration: InputDecoration(border: OutlineInputBorder(),
                                        hintText: "rufus.ei"
                                      ),
                                    )),
                                const Icon(Icons.arrow_right_alt)
                              ],
                            ),
                          ],
                        ),
                      ),
              ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
