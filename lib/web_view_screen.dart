
import 'package:flutter/material.dart';
import 'package:kompyuter_sirlari/BannerAdWidget.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class WebViewScreen extends StatefulWidget {
  final String url;
  const WebViewScreen({Key? key, required this.url}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  late WebViewController _controller;
  bool _isConnected = true;
  bool _isLoading = true
  ;

  @override
  void initState() {
    super.initState();
    _checkConnectivityAndLoadWebView(); // Internetni tekshirib, keyin WebView ni yuklash
  }

  Future<void> _checkConnectivityAndLoadWebView() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    setState(() {
      _isConnected = connectivityResult != ConnectivityResult.none;
    });

    if (_isConnected) { // Faqat internet ulangan bo'lsa WebView ni yuklash
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(widget.url))
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (int progress) {
              // Sahifa yuklanayotganda progressni ko'rsatish uchun
              // Bu yerga progress bar qo'shishingiz mumkin
            },
            onPageStarted: (String url) {
              setState(() {
                _isLoading = true;
              });
            },
            onPageFinished: (String url) {
              setState(() {
                _isLoading = false;

              });
            },
            onWebResourceError: (WebResourceError error) {
              setState(() {
                _isConnected = false;
                _isLoading = false;
              });
            },
          ),
        );
    }
  }

  void _reloadPage() {
    _checkConnectivityAndLoadWebView(); // Qayta yuklashda ham internetni tekshirish
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qo'llanma", textAlign: TextAlign.center),
      ),
      body: _isConnected // Internet ulangan bo'lsa WebView ni ko'rsatish
          ? Stack(
        children: [
          if (_isLoading)
            Center(child: CircularProgressIndicator()),
          if (!_isLoading)
            Column(
              children: [
                Expanded(child: WebViewWidget(controller: _controller)),
                BannerAdWidget(),
              ],
            ),
        ],
      )
          : Center( // Internet uzilgan bo'lsa xato xabarini ko'rsatish
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Internetga ulanishni tekshiring.\nBizning ilovamiz offline rejimda ishlamaydi.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _reloadPage,
              child: Text("Qayta urinib ko'ring"),
            ),
          ],
        ),
      ),
    );
  }
}
