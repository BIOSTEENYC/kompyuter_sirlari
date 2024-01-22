import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step9/page1.dart';
class SEightPO extends StatefulWidget {
  const SEightPO({super.key});
  @override
  State<SEightPO> createState() => _SEightPOState();
}
class _SEightPOState extends State<SEightPO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step8/audio.mp3");
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
                  child: SizedBox(child: Text("(Aeiks) X tugmasini bosib dasturdan chiqing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),))),
              const Expanded(
                  flex: 1,
                  child: SizedBox()),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: ()async{
                      await player.stop();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SNinePO()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/install/step8/Picture1.png")),
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
