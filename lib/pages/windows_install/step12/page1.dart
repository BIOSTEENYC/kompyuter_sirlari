import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step13/page1.dart';
class STwelvePO extends StatefulWidget {
  const STwelvePO({super.key});
  @override
  State<STwelvePO> createState() => _STwelvePOState();
}
class _STwelvePOState extends State<STwelvePO> {
  final player = AudioPlayer();
  Future<void> playAudioFromAsset(String url) async {
    await player.play(AssetSource(url));
  }
  @override
  void initState() {
    playAudioFromAsset("install/step12/audio.mp3");
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
        alignment: Alignment.bottomCenter,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/install/step12/Picture1.png"))),
          child: const Text("Endi sizga 32GB flesh xotira kerak bo'ladi. Flesh xotirani Omborimizdan olishingiz mumkin. Ombor tugmasiga bosing",style: TextStyle(backgroundColor: Colors.green,color: Colors.white,fontSize: 20),)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context){
            return Dialog(
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 2,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2,
                color: Colors.deepPurple,
                child: Center(
                  child: InkWell(
                      onTap: () async{
                        await player.stop();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const SThirteenPO()));
                      },
                      child: Image.asset("assets/install/step12/Picture2.png")),
                ),
              ),
            );
          });
        }, child: const Column(children: [
        Icon(Icons.add),
        Text("Ombor"),
      ],),),
    );
  }
}
