import 'package:flutter/material.dart';
import 'package:flutter_smart_education/states/app_state.dart';

// 第一页 每一个主题item
class TopicItemWidget extends StatelessWidget {
  final Map data;

  const TopicItemWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            (state) {
              switch (state) {
                case '2':
                  return Icon(Icons.check_circle_outline);
                case '1':
                  return Icon(Icons.query_builder);
                case '0':
                  return Icon(Icons.error_outline);
              }
              return Icon(Icons.check_circle_outline);
            }(data['state']),
            Text(data['topicName']),
          ],
        ),
      ),
      onDoubleTap: () {
        // 开始学习
        appState.setTopicId(data['topicId']);
        appState.setTopicName(data['topicName']);
        appState.setSelectedNavigationItem(1);
      },
      onTap: () {
        // 展开
      },
      onLongPress: () {
        _onLongPress(context);
      },
    );
  }

  void _onLongPress(BuildContext context) {
    // 弹出窗口显示主题分面树
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: const EdgeInsets.only(top: 26.0),
                    child: Text("课程" + data['topicName'] + "的分面树"),
                  )
                ],
              ),
            ));
  }
}
