import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step19_26/page6.dart';
class STwentyThree extends StatefulWidget {
  const STwentyThree({super.key});
  @override
  State<STwentyThree> createState() => _STwentyThreeState();
}
class _STwentyThreeState extends State<STwentyThree> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step23/audio.mp3");
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
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const STwentyFour()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step23/Picture1.png"))),
          child: const Padding(
            padding: EdgeInsets.only(top: 45, bottom: 50, right: 30),
          ),
        ),
      ),
    );
  }
}
