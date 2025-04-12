import 'package:flutter/material.dart';
import 'data_model.dart';
import 'web_view_screen.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class DetailScreen extends StatelessWidget {
  final Item data;

  DetailScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: FutureBuilder(
        future: Connectivity().checkConnectivity(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasData && snapshot.data == ConnectivityResult.none) {
            return Center(
              child: Text(
                'Internet ulanishni tekshiring',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            );
          } else {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => WebViewScreen(url: data.link),
                ),
              );
            });
            return Container(); // Bo'sh konteyner, chunki boshqa sahifaga o'tiladi
          }
        },
      ),
    );
  }
}