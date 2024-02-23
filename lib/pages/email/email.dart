import 'package:flutter/material.dart';
import 'package:universal_image/universal_image.dart';
import 'email_notes.dart';
class Email extends StatelessWidget {
  const Email({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elektron pochtani sozlash"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 12,
                borderRadius: BorderRadius.circular(20),
                child: ListTile(
                  title: Text(emailText[0]),
                  subtitle: Column(
                    children: [
                      UniversalImage(emailImages[0]),
                      UniversalImage(emailImages[1]),
                      UniversalImage(emailImages[2]),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4,),
            ListView.builder(
                physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.normal),
                itemCount: emaillText.length,
                shrinkWrap: true,  // ListView ni o'z hajmini o'rab turuvchi widgetga moslashtirish uchun shrinkWrap qo'shildi
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 12,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: ListTile(
                        title: Text(emaillText[index]),  // +1 qo'shildi, shuning uchun 0-indeksli element ko'rsatilmaydi
                        subtitle: UniversalImage(emaillImages[index]),  // +3 qo'shildi, shuning uchun 0, 1 va 2-indeksli rasmlar ko'rsatilmaydi
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

