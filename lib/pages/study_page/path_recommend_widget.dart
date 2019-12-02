import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_smart_education/widgets/topic_item_widget.dart';
import 'package:flutter_smart_education/states/app_state.dart';

class PathRecommendWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PathRecommendWidget();
}

class _PathRecommendWidget extends State<PathRecommendWidget> {
  @override
  void initState() {
    super.initState();
    appState.fetchAllTopics();
    appState.fetchLearningPath();
  }


  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.transform,
          ),
          onPressed: () async {
            // 加一个popupmenuitem
            switch (appState.learningType) {
              case 'all':
                appState.setLearningType('define');
                break;
              case 'define':
                appState.setLearningType('all');
                break;
            }
          },
        ),
        body: generateTopicList());
  }

  Widget generateTopicList() {
    return Observer(
        builder: (_) =>
        appState.currentTopics == null
            ? Center(child: CircularProgressIndicator())
            : Column(
          children: <Widget>[
            Container(
              child: Text(
                "当前学习方式: ${appState.learningType == 'all' ? '零基础' : '场景驱动学习'}",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              padding: EdgeInsets.fromLTRB(0, 6, 0, 6),
            ),
            Flexible(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return TopicItemWidget(data: appState.currentTopics[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 0.5,
                      indent: 75,
                      color: Color(0xFFDDDDDD),
                    );
                  },
                  itemCount: appState.currentTopics.length),
            )
          ],
        )
    );
  }

//  // 根据数据生成实例
//  Widget generateTopicsList() {
//    int code = _contentTopics == null ? 404 : _contentTopics['code'];
//    List data = _contentTopics == null ? [] : _contentTopics['data'];
//
//    return code == 200
//        ? ListView.separated(
//            itemBuilder: (context, index) {
//              return TopicItemWidget(data: data[index]);
//            },
//            separatorBuilder: (context, index) {
//              return Divider(
//                height: 0.5,
//                indent: 75,
//                color: Color(0xFFDDDDDD),
//              );
//            },
//            itemCount: data.length)
//        : Center(child: CircularProgressIndicator());
//  }
}
