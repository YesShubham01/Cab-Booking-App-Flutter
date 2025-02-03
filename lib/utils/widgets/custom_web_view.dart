import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewContainer extends StatefulWidget {
  const WebViewContainer({super.key, required this.url});
  final String url;

  @override
  State<WebViewContainer> createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  InAppWebViewController? _webViewController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // bool? isLoading;
  // WebViewController? controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // appBar: AppBar(
          //   automaticallyImplyLeading: true,
          //   backgroundColor: Colors.black,
          //   foregroundColor: Colors.white,
          // ),
          backgroundColor: Colors.black,
          body: InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri(widget.url)),
            onWebViewCreated: (controller) {
              _webViewController = controller;
            },
          )),
    );
  }
}
