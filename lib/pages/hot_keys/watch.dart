import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/explorer_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/cmd_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/copying_pasting_and_other_actions.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/dialog_boxes.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/settingsapp_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/taskbar_keys.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/virtual_desktops.dart';
import 'package:kompyuter_sirlari/pages/hot_keys/swip_pages/windows_key.dart';
class Watch extends StatelessWidget {
   Watch({super.key});
final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: RotatedBox(quarterTurns: 1,child: FittedBox(fit:BoxFit.fitWidth,child: Text("Yuqoriga va pastga surish orqali mundarijani ko'ring.")),),),
            Expanded(
              flex: 14,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                ),
                child: PageView(
                  scrollDirection: Axis.vertical,
                  controller: _controller,
                  children:  const [
                    CopyingPastingAndOtherActions(),
                    WindowsKey(),
                    CmdKeys(),
                    DialogBoxes(),
                    ExplorerKeys(),
                    VirtualDesktops(),
                    TaskbarKeys(),
                    SettingsAppKeys(),
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: RotatedBox(quarterTurns: 1,child: FittedBox(fit:BoxFit.fill,child: Text("<<<<     >>>>.")),),),
          ],
        ),
      ),
    );
  }
}
