import 'package:flutter/material.dart';
import 'package:flutter_smart_education/pages/login/index.dart';
import 'package:flutter_smart_education/pages/study_page/index.dart';

class Router {
  static const loginRoute = 'app://Login';
  static const studyPageRoute = 'app://StudyPage';

  Widget _getPage(String url, dynamic params) {
    switch (url) {
      case loginRoute:
        return Login();
      case studyPageRoute:
        return StudyPage();
    }
    return Login();
  }

  Router.pushNoParams(BuildContext context, String url) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, null);
    }));
  }

  Router.push(BuildContext context, String url, dynamic params) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, params);
    }));
  }

  Router.pushAndRemoveUntil(BuildContext context, String url) {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
      return _getPage(url, null);
    }), (route) => route == null);
  }

}
