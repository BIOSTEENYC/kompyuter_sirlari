import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step11/page1.dart';
class STenPO extends StatefulWidget {
  const STenPO({super.key});
  @override
  State<STenPO> createState() => _STenPOState();
}
class _STenPOState extends State<STenPO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step10/audio.mp3");
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
                  child: SizedBox(child: const Text("   Downloads papkasiga bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),))),
              const Expanded(
                  flex: 1,
                  child: SizedBox()),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: ()async{
                      await player.stop();
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SElevenPO()));
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/install/step10/Picture1.png")),
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
