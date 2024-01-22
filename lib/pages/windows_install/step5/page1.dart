import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step6/page1.dart';
class SFivePO extends StatefulWidget {
  const SFivePO({super.key});
  @override
  State<SFivePO> createState() => _SFivePOState();
}
class _SFivePOState extends State<SFivePO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step5/audio.mp3");
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
                  child: SizedBox(child: Text("Qidiruv paneliga    Windows 10 iso download deb yozing va qidiruv tugmasini bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white),),)),
              const Expanded(
                  flex: 1,
                  child: SizedBox()),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/install/step4/Picture1.png")),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                  child: Container(
                                    alignment: Alignment.center,height: MediaQuery.of(context).size.height/19,
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          hintText: "rufus.ei"
                                      ),
                                    ),
                                  )),
                              IconButton(icon: const Icon(Icons.search,size: 30,color: Colors.white,), onPressed: ()async{
                                await player.stop();
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SSixPO()));
                              },)
                            ],
                          ),
                          Image.asset("assets/install/step5/Picture1.png")
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
