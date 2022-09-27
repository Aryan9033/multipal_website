import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class javapoint extends StatefulWidget {
  const javapoint({Key? key}) : super(key: key);

  @override
  State<javapoint> createState() => _javapointState();
}

class _javapointState extends State<javapoint> {
  final GlobalKey inAppWebViewkey = GlobalKey();
  InAppWebViewController? inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Javapoint",
          style: TextStyle(fontSize: 18, color: Colors.white, letterSpacing: 3),
        ),
        actions: [
          IconButton(
            onPressed: () async {
              await inAppWebViewController!.loadUrl(
                urlRequest: URLRequest(
                  url: Uri.parse("https://www.javatpoint.com"),
                ),
              );
            },
            icon: const Icon(Icons.home_filled),
          ),
          IconButton(
            onPressed: () async {
              if (await inAppWebViewController!.canGoBack()) {
                await inAppWebViewController!.goBack();
              }
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: () async {
              await inAppWebViewController!.reload();
            },
            icon: const Icon(Icons.refresh),
          ),
          IconButton(
            onPressed: () async {
              if (await inAppWebViewController!.canGoForward()) {
                await inAppWebViewController!.goForward();
              }
            },
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: InAppWebView(
        key: inAppWebViewkey,
        initialUrlRequest: URLRequest(
          url: Uri.parse("https://www.javatpoint.com"),
        ),
        onWebViewCreated: (controller) {
          inAppWebViewController = controller;
        },
      ),
    );
  }
}
