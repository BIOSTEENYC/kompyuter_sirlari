import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/watch.dart';

class HotKeysScreenSaver extends StatefulWidget {
  const HotKeysScreenSaver({super.key});

  @override
  State<HotKeysScreenSaver> createState() => _ActivatiorScreenSaverState();
}

class _ActivatiorScreenSaverState extends State<HotKeysScreenSaver> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    /*SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);*/
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: SystemUiOverlay.values);
    return const Start();
  }
}
class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/hotkeys/fon.png"),colorFilter: ColorFilter.mode(Colors.white, BlendMode.darken)),
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text("Tezkor tugmalar",style: GoogleFonts.orbitron(color: Colors.yellow,fontWeight: FontWeight.bold))),
              ),
              const SizedBox(height: 10,),
              MaterialButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Watch()));
              },color: Colors.white,height: 50,child: Text("Kirish",style: GoogleFonts.aladin(color: Colors.blue,),),)
            ],
          ),
        ),
      ),
    );
  }
}
