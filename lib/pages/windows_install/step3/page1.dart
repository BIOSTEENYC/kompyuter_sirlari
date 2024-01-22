import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../step4/page1.dart';
class StepThreePageOne extends StatefulWidget {
  const StepThreePageOne({super.key});
  @override
  State<StepThreePageOne> createState() => _StepThreePageOneState();
}
class _StepThreePageOneState extends State<StepThreePageOne> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step3/audio.mp3");
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
            padding: const EdgeInsets.only(top: 30, bottom: 50, right: 30),
            child: Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: const Text("Qidiruv paneliga rufus.ie deb yozing va qidirish tugmasini bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),),
                ),
                const Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 10,
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage("assets/install/step3/picture2.png"))),
                      child: ListView(
                        children: [
                          Image.asset("assets/install/step3/Picture3.png"),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Qidiring yoki sayt nomini yozing",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MaterialButton(
                              onPressed: () async {
                                await player.stop(); // audioni to'xtatish
                                var contextToUse = context; // contextni saqlash
                                Navigator.pushReplacement(
                                    contextToUse,
                                    MaterialPageRoute(
                                        builder: (_) => const StepFourPageOne()
                                    )
                                ); // keyingi sahifaga o'tkazish
                              },
                              color: Colors.blue,
                              child: const Text("Qidirish"),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )),
    );
  }
}

