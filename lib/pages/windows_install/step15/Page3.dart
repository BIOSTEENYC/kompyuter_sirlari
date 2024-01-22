import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step16/page1.dart';
class SFifteenPTh extends StatefulWidget {
  const SFifteenPTh({super.key});
  @override
  State<SFifteenPTh> createState() => _SFifteenPThState();
}
class _SFifteenPThState extends State<SFifteenPTh> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step15/audio.mp3");
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
      body: InkWell(
        onLongPress: ()async{
          await player.stop();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SSixteenPO()));
        },
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step15/picture3.png"))),
            child: const Text("Klaviaturada joylashgan o'chirish tugmasini bossib turing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white,fontSize: 20),)
        ),
      ),
    );
  }
}
