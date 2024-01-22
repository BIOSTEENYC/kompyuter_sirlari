import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/windows-icon.dart';

class WindowsKey extends StatelessWidget {
  const WindowsKey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(Colors.white, BlendMode.exclusion),
                  fit: BoxFit.cover,
                  image: AssetImage("assets/hotkeys/background.png"))
          ),
          child: Column(
            children: [
              const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FittedBox(fit:BoxFit.fitWidth,child: Text("Windows Icon tugmasi bilan bog'liq tezkor tugmalar",style: TextStyle(color: Colors.white,backgroundColor: Colors.blue),)),
                  )),
              Expanded(
                  flex: 5,
                  child: Image.asset("assets/hotkeys/WindowsIcon.png",scale: 3,)),
              Expanded(
                  flex: 1,
                  child: MaterialButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>WindowsIcon()));
                  },child: Image.asset("assets/hotkeys/PlayButton.png"),))
            ],
          ),
        ),
      ),
    );
  }
}
