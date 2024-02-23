import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/command_promp.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/copypaste.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/dialog_box_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/explorer_app_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/settings_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/task_bar_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/virtual_desktop.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/windows_icon.dart';
import 'package:universal_image/universal_image.dart';
class HotKeyScreenSaver extends StatelessWidget {
   const HotKeyScreenSaver({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tezkor tugmalar"),),
      backgroundColor: Colors.green.shade50,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Nusxalash va qo'yish tezkor tugmalari"),
                trailing: UniversalImage("assets/hotkeys/CopyIcon.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const CopyPaste()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Windows Icon tugmasi bilan bog'liq tezkor tugmalar"),
                trailing: UniversalImage("assets/hotkeys/WindowsIcon.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const WindowsIcon()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Buyurqlar satri ilovasi bilam bog'liq tezkor tugmalar"),
                trailing: UniversalImage("assets/hotkeys/CMD.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const CommandPromp()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Muloqot oynasi bilan bog'liq tezkor tugmalar"),
                trailing: UniversalImage("assets/hotkeys/Interface.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const DialogBoxKeys()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("File explorer bilan bog'liq tezkor tugmalar"),
                trailing: UniversalImage("assets/hotkeys/fileexplorer.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const ExplorerAppKeys()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Virtual Ekranlar bilan bog'liq tezkor tugmalar"),
                trailing: UniversalImage("assets/hotkeys/VirtualDesktop.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const VirtualDesktop()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Vazifalar paneli bilan bog'liq tezkor tugmalari"),
                trailing: UniversalImage("assets/hotkeys/TackBar.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const TaskBarKeys()));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 12,
              borderRadius: BorderRadius.circular(20),
              child: ListTile(
                leading: const CircleAvatar(backgroundColor: Colors.blue,),
                title: const Text("Sozlamalar ilovasi bilan bog'liq tezkor tugmalar"),
                trailing: UniversalImage("assets/hotkeys/Settings.webp"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const SettingsKeys()));
                },
              ),
            ),
          ),

        ],
      )
    );
  }
}
