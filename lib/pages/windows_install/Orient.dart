import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kompyuter_sirlari/pages/windows_install/step1/levelone.dart';
class InstallScreenSaver extends StatelessWidget {
  const InstallScreenSaver({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: SystemUiOverlay.values);
    return const Simulator();
  }
}
class Simulator extends StatelessWidget {
  const Simulator({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/background.png"))
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Windows o'rnatish simulatori",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)
                ],
              ),
              MaterialButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const LOne()));
              },color: Colors.white,child: const Text("boshlash"),)
            ],
          ),
        )
    );
  }
}
