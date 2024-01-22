import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../step3/page1.dart';
class StepTwoPageOne extends StatefulWidget {
  const StepTwoPageOne({super.key});
  @override
  State<StepTwoPageOne> createState() => _StepTwoPageOneState();
}
class _StepTwoPageOneState extends State<StepTwoPageOne> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    super.initState();
    playAudioFromAsset("install/step2/audio.mp3");
  }
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: InkWell(
  onTap: () async {
    await player.stop(); // audioni to'xtatish
    var contextToUse = context; // contextni saqlash
    Navigator.pushReplacement(
        contextToUse,
        MaterialPageRoute(
            builder: (_) => const StepThreePageOne()
        )
    ); // keyingi sahifaga o'tkazish
  },

  child:   Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    decoration: const BoxDecoration(
      image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/install/step2/picture1.png"))
    ),
    child: const Text("Windowsni o'rnatadigan dastur 'rufus' dasturini yuklab olishimiz kerak. Buning uchun Google Chrome ga kiring",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),),
  ),
),
    );
  }
}
