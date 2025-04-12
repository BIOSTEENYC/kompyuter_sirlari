
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:kompyuter_sirlari/BannerAdWidget.dart';
import 'data_model.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataModel> category = [];
  final List<IconData> icons=[
    Icons.settings,
    Icons.auto_fix_high,
    Icons.app_blocking,
    Icons.control_camera_rounded,
    Icons.question_answer,
  ];

  @override
  void initState() {
    super.initState();
    loadJsonData();
  }

  Future<void> loadJsonData() async {
    try {
      final String response = await rootBundle.loadString('assets/data.json');
      final data = await json.decode(response) as Map<String, dynamic>;
      if (data['category'] != null) {
        setState(() {
          category = (data['category'] as List).map((json) => DataModel.fromJson(json)).toList();
        });
      } else {
        // Agar 'category' kaliti bo'lmasa, xatolikni qayta ishlash
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error loading JSON data: $e');
      }
    }
  }

  void _showModal(BuildContext context, DataModel categoryItem) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Modalni to'liq ekran qilish uchun
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8, // Modal balandligi
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            
children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: categoryItem.items.length,
                  itemBuilder: (context, itemIndex) {
                    return ListTile(
                      tileColor: Colors.grey[200], // Fon rangi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.grey[300]!), // Chegara chiziqlari
                      ),
                      title: Text(categoryItem.items[itemIndex].title, style: const TextStyle(fontFamily: 'Roboto')),
                      trailing: const Icon(Icons.arrow_forward_ios), // O'q ikonkasini qo'shamiz
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(data: categoryItem.items[itemIndex]),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Kompyuter Sirlari 2.0', style: TextStyle(fontFamily: 'Roboto')),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: category.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : AspectRatio(
              aspectRatio: 1/1,
                  child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                                ),
                                padding: const EdgeInsets.all(10),
                                itemCount: category.length,
                                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _showModal(context, category[index]);
                    },
                    child: Card(
                      color: Colors.blue[100], // Fon rangi
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                icons[Random().nextInt(icons.length)],
                                // Ikonkani o'zgartirishingiz mumkin
                                size: 40,
                                color: Colors.blue,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                category[index].category,
                                style: const TextStyle(
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                                },
                              ),
                ),
          ),
          const BannerAdWidget()
        ],
      ),
    );
  }
}