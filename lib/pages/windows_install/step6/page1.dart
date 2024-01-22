import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step7/page1.dart';
class SSixPO extends StatefulWidget {
  const SSixPO({super.key});
  @override
  State<SSixPO> createState() => _SSixPOState();
}
class _SSixPOState extends State<SSixPO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step6/audio.mp3");
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
            child: SizedBox(child: Text("Uptodown ga bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),),)),
        const Expanded(
            flex: 1,
            child: SizedBox()),
        Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/install/step3/picture2.png")),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                child: ListView(
                  children: [
                    Image.asset("assets/install/step6/Picture1.png"),
                    InkWell(
                        onTap: ()async{
                          await player.stop();
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SSevenPO()));
                        },
                        child: Image.asset("assets/install/step6/Picture2.png"))
                  ],
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
