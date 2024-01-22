import 'package:flutter/material.dart';
import 'data.dart';
//Bu disk manager oynasini ko'rsatadigan widget
class DiskManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //ilova sarlavhasi ko'kish rangda
        backgroundColor: Colors.cyan,
        //matn sezgirlik uchun MoshlashganQutiga o'ralgan.
        title: FittedBox(fit: BoxFit.contain,child: Text('[Windows 11/10] Qattiq diskni bo\'lish, qisqartirish va kengaytirish',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body: Data(
        /*Ilovadaning asosiy qismi quyidagi joylashuvdagi faylda joylashgan:
        kompyuter_sirlari/lib/pages/driver_se/data.dartda joylashgan
         */
      ),
    );
  }
}
