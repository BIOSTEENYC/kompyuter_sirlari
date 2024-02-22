import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/pages/allapps/allapps.dart';
import 'package:kompyuter_sirlari/pages/antivirus/antivirus.dart';
import 'package:kompyuter_sirlari/pages/browser/browser.dart';
import 'package:kompyuter_sirlari/pages/connect_printer/printer.dart';
import 'package:kompyuter_sirlari/pages/customize/customize.dart';
import 'package:kompyuter_sirlari/pages/drive_se/disk_managment.dart';
import 'package:kompyuter_sirlari/pages/email/email.dart';
import 'package:kompyuter_sirlari/pages/settingup_network/setting_network.dart';
import 'package:kompyuter_sirlari/pages/update_system/update_system.dart';
import '../hot_keys/watch.dart';
import '../voice_assistants/voice_assistans.dart';
import '../windows_activation/screens/desktop.dart';
import '../windows_install/Orient.dart';
import 'package:kompyuter_sirlari/pages/backup_restore/backup_restore.dart';

final List<String> images = [
  "assets/background.png",
  'assets/Activate/activate.png',
  'assets/hotkeys/icon.png',
  'assets/driveSE/icon.png',
  'assets/antivirus/antivirus.png',
  'assets/browser/browserinstall.png',
  'assets/e_mail/epochta.png',
  'assets/voice_assistants/assistants.png',
  'assets/systemupdate/update.png',
  'assets/backupeandrstore/bacuprestore.png',
  'assets/setting_up_netowrk/settingupnetwork.png',
  'assets/printer/printer.png',
  'assets/allapps/apps.png',
  'assets/customize/desktopcustomize.jpg',
];

final List<String> texts = [
  'Windows 10 \nO\'rnatish (Sistema qilish)',
  'Windows 10ni bepul \nfaollashtirish (aktivatsiya)',
  'Tezkor tugmalar ',//tezkor tugmalar
  'Disklarni bo\'lish va ulash ',//disklarni bo'lish va ulash
  'Antivirus dasturlarini \no\'rnatish va sozlash',
  'Brauzerlarni o\'rnatish \nva sozlash',
  'E-pochtani sozlash',
  'Ovozli yordamchilar \nbilan ishlash',
  'Tizimni yangilash',
  'Fayllarni saqlash va tiklash',
  'Tarmoq ulanishlarini sozlash',
  'Printerlarni ulash va sozlash',
  'Barcha ilovalarni ko\'rish va boshqarish',
  'Ish stolini moslashtirish',
];
final List<Widget>router =[
  const InstallScreenSaver(),
  const ActivatiorScreenSaver(),
  const HotKeyScreenSaver(),
  const DiskManagement(),
  const Antivirus(),
  const Browser(),
  const Email(),
  const VoiceAssistants(),
  const UpdateSytem(),
  const BackUpRestore(),
  const SettingUp(),
  const Printer(),
  const AllApps(),
  const CustomizeDesktop()
];