import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step17/page1.dart';
class SSixteenPO extends StatefulWidget {
  const SSixteenPO({super.key});
  @override
  State<SSixteenPO> createState() => _SSixteenPOState();
}
class _SSixteenPOState extends State<SSixteenPO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step16/audio.mp3");
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
        onTap: ()async{
          await player.stop();
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SSeventeenPO()));
        },
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step16/Picture1.png"))),
            child: const Text("O'chirish tugmasini bosing va F12 tugmasini bossib turing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white,fontSize: 20),)
        ),
      ),
    );
  }
}
