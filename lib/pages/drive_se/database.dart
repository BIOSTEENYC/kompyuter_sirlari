//ro'yxat. Ro'yxat rasm va matndan iborat
class DataItem {
  final String text;
  final String image;
//ro'yxat DataItemdir. U matnlar va rasmlar sinfi
  DataItem(this.text, this.image);
}

class Database {
  static List<DataItem> getData() {
    return [
      DataItem(
      'Mundarija :\n'
            "\n"
            "      Yangi bo'lim yarating\n"
            "      Mavjud hajmni qisqartiring\n"
            "      Mavjud hajmni kengaytiring\n"
            "\n"
            "\n"
            "      --Yangi bo'lim yarating--\n"
            "\n"
            "      Agar sizda yangi disk bo'lsa \n"
            "yoki ajratilmagan disk bo'lsa, \n"
            "siz quyidagi amallarni bajarib, \n"
            "yangi bo'lim yaratishingiz mumkin.\n"
            "\n"
            "1.      Windows qidiruv satriga [Computer management yoki\n"
            "управление Компьютер]kiriting va qidiring (1) ,\n"
            " so'ng [Administrator sifatida ishga tushirish] (2) \n"
            "tugmasini bosing .",
        'driveSE/searchbar.webp',
      ),
      DataItem(
        '\n'
            '2. Kompyuter boshqaruvida [Disk management yoki\n'
            'Управление диск] ③ ni tanlang ',
        'driveSE/diskmanagement.webp',
      ),
      DataItem(
        '\n'
            '3. Disk boshqaruvida qattiq diskdagi ajratilmagan hududni \n'
            'sichqonchaning o\'ng tugmasi bilan bosing ④ ,\n'
            ' so\'ng [New Simple Volume yoki Новый простой том] ⑤ ni\n'
            ' tanlang . ',
        'driveSE/newsimplevolume.webp',
      ),
      DataItem(
        '\n'
            '4. Yangi oddiy hajm ustasida [Next yoki далее ] ⑥ ni tanlang .',
        'driveSE/simplenext.webp',
      ),
      DataItem(
        '\n'
            '5. Yaratmoqchi boʻlgan tovush hajmini kiriting \n'
            'yoki maksimal standart oʻlchamni ⑦ qabul qiling ,\n'
            ' soʻng [Next yoki далее ] ⑧ ni tanlang . \n'
            'Agar siz yaratgan tovush hajmi maksimal \n'
            'standart o\'lchamga etib bormasa, qolgan bo\'sh \n'
            'joy hali ham ajratilmagan hudud bo\'lib qoladi.',
        'driveSE/next2.webp'
      ),
      DataItem(
        '\n'
            '6. Yangi boʻlimni aniqlash uchun haydovchi harfini\n'
            ' tanlang yoki standart haydovchi harfini qabul qiling ⑨\n'
            ' , soʻngra [Next yoki далее ] ⑩ ni tanlang . ',
        'driveSE/selectletter.webp',
      ),
      DataItem(
        '\n'
            '7. Ovoz balandligini standart sozlamalar bilan formatlash \n'
            'uchun siz ovoz balandligi yorlig\'ini ham sozlashingiz \n'
            'mumkin ⑪ , so\'ngra [Next yoki далее ] ⑫ ni tanlang .',
        'driveSE/name.webp',
      ),
      DataItem(
        '\n'
            '8. Yangi oddiy hajm yaratish tugallandi, siz oʻrnatgan \n'
            'quyidagi sozlamalarni tasdiqlang va [Finish yoki готово] ⑬ni\n'
            ' tanlang .',
        'driveSE/finish_simple_volume.webp',
      ),
      DataItem(
        '\n'
            '9. Siz yaratilgan yangi jildni Disk boshqaruvida ⑭\n'
            ' topishingiz mumkin . Qolgan bo\'sh joy bo\'lsa, \n'
            'u hali ham ajratilmagan hudud, keyin esa boshqa bo\'lim\n'
            'sifatida yaratilishi mumkin bo\'lgan ajratilmagan mintaqa\n'
            ' bo\'ladi. ',
        'driveSE/finish2.webp',
      ),
      DataItem(
        '\n'
        '\n'
            'Mavjud hajmni qisqartiring\n'
'\n'
        'Shrink Volume mavjud diskdan yangi disk maydoni yaratishga\n'
        'imkon beradi va u ajratilmagan hudud bo\'ladi. \n'
            'Agar sizga qo\'shimcha bo\'lim kerakligini aniqlasangiz, \n'
            'lekin qo\'shimcha disklar bo\'lmasa, uni yaratish uchun \n'
            'quyidagi bosqichlarga murojaat qilishingiz mumkin.\n'
'\n'
     ' Eslatma : Agar mavjud bo\'limda ma\'lumotlar mavjud bo\'lsa, \n'
            'bo\'limni qisqartirish ma\'lumotlarni yo\'q qilishi mumkin.\n'
            'Bo\'limni qisqartirishdan oldin ma\'lumotlarning zaxira\n'
            ' nusxasini yaratishni tavsiya qilamiz.\n'
'\n'
   '\n 1.   Windows qidiruv satriga [Computer management yoki \n'
            'управление Компьютер] ni kiriting va qidiring ① ,\n'
            ' soʻng [Administrator sifatida ishga tushirish] ② \n'
            'tugmasini bosing . ',
        'driveSE/expand1.webp',
      ),
      DataItem(
        '\n'
            '2. Kompyuter boshqaruvida [Disk management yoki \n'
            'Управление диск] ③ ni tanlang .',
        'driveSE/expand2.webp',
      ),
      DataItem(
        '\n'
            '3. Disk boshqaruvida qo\'shimcha bo\'lim \n'
            'kerak bo\'lgan mavjud hajmni sichqonchaning \n'
            'o\'ng tugmasi bilan bosing ④ , \n'
            'so\'ngra [Shrink Volume yoki том] ⑤ ni tanlang .',
        'driveSE/expand3.webp',
      ),
      DataItem(
        '\n'
            '4. Kichraytirish hajmi avtomatik ravishda kichraytirilishi \n'
            'mumkin bo\'lgan maksimal bo\'sh joyni hisoblab chiqadi, \n'
            'siz kichraytirmoqchi bo\'lgan o\'lchamni ham kiritishingiz \n'
            'mumkin ⑥ , so\'ngra [Shrink Сжать том] ⑦ ni tanlang .',
        'driveSE/expand4.webp',
      ),
      DataItem(
        '\n'
            '5. Qisqartirish tugallangandan so\'ng, Disk boshqaruvida\n'
            'ajratilmagan hudud yaratiladi va keyin siz yangi bo\'lim \n'
            'yaratish uchun ajratilmagan hududdan foydalanishingiz mumkin⑧.',
        'driveSE/expand5.webp',
      ),
      DataItem(
        '\n'
            '\n'
            '\n'
            '     Mavjud hajmni kengaytiring - Extend Volume\n'
'\n'
        '“Extend Volume” funksiyasi sizga mavjud hajmga joy qo’shishga \n'
            'imkon beradi, uni qattiq-diskdagi bo’sh joyga kengaytiradi,\n'
            'formatlanmagan va harflanmagan joyga, kengaytiradi - unallocated.'
        ,
        'driveSE/extend1o1.webp',
      ),
      DataItem(
        '\n'
            '1. Windows qidiruv satriga [Computer management yoki \n'
            'управление Компьютер] ni kiriting va qidiring ① ,\n'
            ' soʻng [Administrator sifatida ishga tushirish] ② \n'
            'tugmasini bosing . ',
        'driveSE/extend1.webp',
      ),
      DataItem(
        '\n'
            '2. Kompyuter boshqaruvida [Disk management yoki \n'
            'Управление диск] ③ ni tanlang .',
        'driveSE/extend2.webp',
      ),
      DataItem(
        '\n'
            '3.Disk boshqaruvida kengaytirmoqchi bo\'lgan mavjud \n'
            'hajmni sichqonchaning o\'ng tugmasi bilan bosing④,\n'
            'so\'ng [extend Volume yoki расширять том]⑤-ni tanlang.',
        'driveSE/extend3.webp',
      ),
      DataItem(
        '\n'
      'Agar ajratilmagan bo\'sh joy bo\'lmasa, lekin mavjud \n'
      'hajmni kengaytirmoqchi bo\'lsangiz, siz alohida hajmni\n'
      'o\'chirishingiz mumkin, keyin u ajratilmagan bo\'sh joyga\n'
      'aylanadi. Biroq, agar o\'chirilgan tovush siz kengaytirmoqchi bo\'lgan\n'
      'hajmdan keyin darhol paydo bo\'lsa, ular orasida boshqa jildlar \n'
      'bo\'lmasa. Eslatma : Agar mavjud jildni o\'chirib tashlasangiz, '
      'undagi ma\'lumotlar o\'chiriladi, avval fayllaringizni zaxiralang .',
        'driveSE/extend3o3.webp',
      ),
      DataItem(
        '\n'
            '4.Ovozni kengaytirish ustasida [next yoki далее] ⑥ ni tanlang .',
        'driveSE/extend4.webp',
      ),
      DataItem(
        '\n'
      '5.Kengaytirmoqchi boʻlgan disj hajmini kiriting yoki maksimal\n'
      'standart oʻlchamni ⑦ qabul qiling va [next yoki далее] ⑧ ni tanlang . \n'
      'Agar siz kengaytiradigan tovush hajmi maksimal standart \n'
      'o\'lchamga etib bormasa, qolgan bo\'sh joy hali ham ajratilmagan\n'
      'hudud bo\'lib qoladi.',
        'driveSE/extend5.webp',
      ),
      DataItem(
        '\n'
      '6.Ovoz balandligini kengaytirish tugallandi, siz o\'rnatgan\n'
      'quyidagi sozlamalarni tasdiqlang va [Finish,] ni tanlang ⑨ .',
        'driveSE/extend6.webp',
      ),
      DataItem(
        '\n'
      '7.Siz kengaytirilgan hajmni Disk boshqaruvi ⑩ bo\'limida topishingiz\n'
      'mumkin. Qolgan bo\'sh joy bo\'lsa, u hali ham ajratilmagan hudud, \n'
      'keyin esa boshqa bo\'lim sifatida yaratilishi mumkin bo\'lgan \n'
      'ajratilmagan mintaqa bo\'ladi.',
        'driveSE/extend7.webp',
      ),
    ];
  }
}
