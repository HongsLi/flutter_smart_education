import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_smart_education/widgets/assembles_item_widget.dart';

//import 'package:flutter_smart_education/common/API.dart';
import 'package:flutter_smart_education/states/app_state.dart';

// 第二页
class StudyAssemblesWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StudyAssemblesWidget();
}

class _StudyAssemblesWidget extends State<StudyAssemblesWidget> {

  void initState() {
    // TODO: implement initState
    super.initState();
    appState.fetchAssembles();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(body: generateAssembleList());
  }

  Widget generateAssembleList() {
    return Observer(
      builder: (_) => appState.assemblesOfCurrentTopic == null
          ? Center(child: CircularProgressIndicator())
          : Column(children: <Widget>[
              Container(
                child: Text(
                  '当前所选主题: ${appState.currentTopicName}',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
              ),
              Flexible(
                  child: ListView.builder(
                      itemBuilder: (context, index) {
                        return AssemblesItemWidget(
                            data: appState.assemblesOfCurrentTopic[index]);
                      },
                      itemCount: appState.assemblesOfCurrentTopic.length))
            ]),
    );
  }
//
//  Widget generateAssemblesList() {
//    int code = _assembles == null ? 404 : _assembles['code'];
//    List data = _assembles == null ? [] : _assembles['data']['content'];
//    return Column(
//      children: <Widget>[
//        Container(
//          child: Text(
//            '当前所选主题: ',
//            textAlign: TextAlign.center,
//            style: TextStyle(fontSize: 14),
//          ),
//          width: double.infinity,
//          decoration: BoxDecoration(
//              border: Border(bottom: BorderSide(color: Colors.grey))),
//          padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
//        ),
//        code == 200
//            ? Flexible(
//                child: ListView.builder(
//                    itemBuilder: (context, index) {
//                      return AssemblesItemWidget(data: data[index]);
//                    },
//                    itemCount: data.length))
//            : Center(child: CircularProgressIndicator())
//
//        //list
//      ],
//    );
//  }
}
