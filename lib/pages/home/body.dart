import 'package:flutter/material.dart';

import 'Lists.dart';

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 1/1,
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(texts.length, (index) {
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> router[index]));
                  },
                  child: Card(
                    shadowColor: Colors.blue,surfaceTintColor: Colors.red,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        image:  DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(images[index])),
                        border: Border.all(color: Colors.blue,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(texts[index],textAlign: TextAlign.center,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                );
              })
          ),
        ),
        Container(
          padding: EdgeInsets.all(8),
          color: Colors.white30,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text('"Kompyuter sirlari" ilovasining yangi versiyalariga \n'
                'quyidagi funksiyalar qo\'shiladi:\n'
                '\n'
                '1. **Antivirus dasturlarini o\'rnatish va sozlash**: \n'
                'Bu funksiya foydalanuvchilarga turli antivirus \n'
                'dasturlarini qanday o\'rnatish va sozlash haqida ma\'lumot beradi.\n'
                '\n'
                '2. **Brauzerlarni o\'rnatish va sozlash**:\n'
                'Chrome, Firefox, Edge kabi turli brauzerlarni o\'rnatish\n'
                ' va ularni sozlash haqida ma\'lumot beradi.\n'
                '\n'
                '3. **E-pochta klientlarini sozlash**:\n'
                'Outlook, Thunderbird kabi e-pochta klientlarini sozlash haqida\n'
                ' ma\'lumot beradi\n'
                '\n'
                '4. **Ovozli yordamchilar bilan ishlash**: \n'
                'Cortana, Siri, Google Assistant kabi ovozli yordamchilar bilan\n'
                'ishlash haqida ma\'lumot beradi.\n'
                '\n'
                '5. **Virtual xususiy tarmoq (VPN) sozlash**: \n'
                'VPN-larni qanday sozlash va ulardan qanday foydalanish haqida\n'
                ' ma\'lumot beradi.\n'
                '\n'
                '6. **Disklarni formatlash va bo\'lish**: \n'
                'Disklarni formatlash va bo\'lish haqida ma\'lumot beradi\n'
                '\n'
                '7. **Tizimni yangilash**: \n'
                'Windows 10 tizimini qanday yangilash haqida ma\'lumot beradi.\n'
                '\n'
                '8. **Fayllarni saqlash va tiklash**:\n'
                'Fayllarni qanday saqlash va tiklash haqida ma\'lumot beradi.\n'
                '\n'
                '9. **Tarmoq ulanishlarini sozlash**: \n'
                'Wi-Fi, Ethernet, Bluetooth ulanishlarini qanday sozlash haqida\n'
                'ma\'lumot beradi.\n'
                '\n'
                '10. **Printerlarni ulash va sozlash**: \n'
                'Printerlarni qanday ulash va sozlash haqida ma\'lumot beradi.'),
          ),
        )
      ],
    );
  }
}
