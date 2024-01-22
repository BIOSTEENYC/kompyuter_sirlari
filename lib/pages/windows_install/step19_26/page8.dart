import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step27/page1.dart';
class STwentySeven extends StatefulWidget {
  const STwentySeven({super.key});
  @override
  State<STwentySeven> createState() => _STwentySevenState();
}
class _STwentySevenState extends State<STwentySeven> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step26/audio.mp3");
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
           Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const STwentyNine()));
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step26/Picture1.png"))),
          child: const Padding(
            padding:  EdgeInsets.only(top: 45, bottom: 50, right: 30),
          ),
        ),
      ),
    );
  }
}
