import 'package:flutter/material.dart';
import 'package:flutter_smart_education/common/Global.dart';
import 'package:flutter_smart_education/router.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // 密码是否明文
  bool pwdShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          //app名称
          Padding(
            child: Text(
              Global.appName,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
                height: 1.3,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            padding: EdgeInsets.fromLTRB(
                0, MediaQuery.of(context).size.height * 0.2, 0, 20),
          ),

          // 输入用户名
          Padding(
          child:TextField(
            autofocus: true,
            decoration: InputDecoration(
                labelText: '学号',
                hintText: '请输入学号',
                prefixIcon: Icon(Icons.person)),
          ),
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          ),

          // 输入密码
          Padding(
          child:TextField(
            obscureText: !pwdShow,
            decoration: InputDecoration(
              labelText: '密码',
              hintText: '请输入密码',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(pwdShow ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    pwdShow = !pwdShow;
                  });
                },
              ),
            ),
          ),
            padding: EdgeInsets.fromLTRB(20, 0, 20, 5),
          ),

          // 登陆按钮
          Padding(
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  color: Colors.blueAccent,
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "登 录",
                    textScaleFactor: 1.2,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  onPressed: () {
                    Router.pushAndRemoveUntil(context, Router.studyPageRoute);
                  },
                ),
              ),
              padding: EdgeInsets.fromLTRB(20, 40, 10, 20)),
        ],
      ),
    ));
  }
}
