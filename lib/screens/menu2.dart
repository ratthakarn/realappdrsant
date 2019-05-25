import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Menu2 extends StatefulWidget {
  @override
  _Menu2State createState() => _Menu2State();
}

class _Menu2State extends State<Menu2> {
  FlutterWebviewPlugin objWebview = FlutterWebviewPlugin();
  static String url =
      "https://rme-audio.de/en/";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objWebview.close();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    objWebview.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withJavascript: true,
      withLocalStorage: true,
      withZoom: true,
      appBar: AppBar(
        title: Text('RME WEBSITE'),
      ),
    );
  }
}
