import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/drive_se/disk_managment.dart';

import '../hot_keys/screen_normalizer.dart';
import '../windows_activation/screens/desktop.dart';
import '../windows_install/Orient.dart';

final List<String> images = [
  "assets/background.png",
  'assets/Activate/activate.png',
  'assets/hotkeys/icon.png',
  'assets/driveSE/icon.png',
  // Qo'shimcha rasmlar...
];

final List<String> texts = [
  'Windows 10 O\'rnatish (Sistema qilish)',
  'Windows bepul faollashtirish (aktivatsiya)',
  ' ',//tezkor tugmalar
  ' ',//disklarni bo'lish va ulash
];
final List<Widget>router =[
  InstallScreenSaver(),
  ActivatiorScreenSaver(),
  HotKeysScreenSaver(),
  DiskManagement()
];