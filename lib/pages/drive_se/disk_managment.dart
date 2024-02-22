import 'package:flutter/material.dart';
import 'data.dart';
//Bu disk manager oynasini ko'rsatadigan widget
class DiskManagement extends StatelessWidget {
  const DiskManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        //ilova sarlavhasi ko'kish rangda
        backgroundColor: Colors.cyan,
        //matn sezgirlik uchun MoshlashganQutiga o'ralgan.
        title: const FittedBox(fit: BoxFit.contain,child: Text('[Windows 11/10] Qattiq diskni bo\'lish, qisqartirish va kengaytirish',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body: const Data(
        /*Ilovadaning asosiy qismi quyidagi joylashuvdagi faylda joylashgan:
        kompyuter_sirlari/lib/pages/driver_se/data.dartda joylashgan
         */
      ),
    );
  }
}
