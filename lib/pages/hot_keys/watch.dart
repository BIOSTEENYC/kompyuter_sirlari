import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/command_promp.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/copypaste.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/dialog_box_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/explorer_app_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/settings_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/task_bar_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/virtual_desktop.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/test_key/windows_icon.dart';
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
                trailing: Image.asset("assets/hotkeys/CopyIcon.png"),
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
                trailing: Image.asset("assets/hotkeys/WindowsIcon.png"),
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
                trailing: Image.asset("assets/hotkeys/CMD.png"),
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
                trailing: Image.asset("assets/hotkeys/Interface.png"),
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
                trailing: Image.asset("assets/hotkeys/fileexplorer.png"),
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
                trailing: Image.asset("assets/hotkeys/VirtualDesktop.png"),
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
                trailing: Image.asset("assets/hotkeys/TackBar.png"),
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
                trailing: Image.asset("assets/hotkeys/Settings.png"),
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
