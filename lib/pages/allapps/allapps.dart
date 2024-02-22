import 'package:flutter/material.dart';

class AllApps extends StatefulWidget {
  const AllApps({super.key});

  @override
  State<AllApps> createState() => _AllAppsState();
}

class _AllAppsState extends State<AllApps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        title: const Text("Barcha ilovalarni ko'rish va boshqarish"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(20),
                child: const ListTile(
                  title: Text("Usul 1: Fayl eksploratori orqali"),
                      subtitle: Text("Klaviaturada Windows logo va R tugmalarini bir vaqtning o’zida bosib, Run buyruq qutisini oching.\nQutiga Shell:AppsFolder deb yozing va Enter tugmasini bosing. Bu, barcha o’rnatilgan ilovalar hamda klassik ish stoli dasturlarini ko’rsatuvchi ilovalar papkasini ochadi. Bu yerda, ilovalar/dasturlarni ochishingiz, ularni Start/taskbar’ga joylashtirish yoki o’chirish jarayonini boshlashingiz mumkin."),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(20),
                child: const ListTile(
                  title: Text("Usul 2: Sozlamalar orqali"),
                  subtitle: Text("Sozlamalar > Ilovalar > Ilovalar va xususiyatlar sahifasiga o’ting, bu yerda barcha o’rnatilgan ilovalar, shu jumladan, standart ilovalar, Store’dan o’rnatilgan ilovalar va klassik ish stoli dasturlari ko’rinadi."),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
