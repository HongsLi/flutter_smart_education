import 'package:flutter/material.dart';
import 'package:flutter_smart_education/states/app_state.dart';
import 'package:webview_flutter/webview_flutter.dart';


class KnowledgeGraphWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _KnowledgeGraphWidget();
}

class _KnowledgeGraphWidget extends State<KnowledgeGraphWidget> {


  @override
  Widget build(BuildContext buildContext) {
    return Center(
      child: WebView(
        initialUrl: "http://yotta.xjtushilei.com/silkroad-graph/index.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
