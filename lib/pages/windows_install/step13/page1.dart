import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step14/Page1.dart';
class SThirteenPO extends StatefulWidget {
  const SThirteenPO({super.key});
  @override
  State<SThirteenPO> createState() => _SThirteenPOState();
}
class _SThirteenPOState extends State<SThirteenPO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step13/audio.mp3");
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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SFourteenPO()));
        },
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step13/Picture1.png"))),
            child: const Text("Start tugmasini bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white,fontSize: 20),)
        ),
      ),
    );
  }
}
