import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step10/page1.dart';
class SNinePO extends StatefulWidget {
  const SNinePO({super.key});
  @override
  State<SNinePO> createState() => _SNinePOState();
}
class _SNinePOState extends State<SNinePO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step9/audio.mp3");
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
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const STenPO()));
        },
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/install/step3/picture1.png"))),
            child: const Text("Yo'l boshlovchiga kiring",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),)
        ),
      ),
    );
  }
}
