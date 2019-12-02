import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_smart_education/pages/study_page/knowledge_graph_widget.dart';
import 'package:flutter_smart_education/pages/study_page/path_recommend_widget.dart';
import 'package:flutter_smart_education/pages/study_page/study_assembles_widget.dart';
import 'package:flutter_smart_education/states/app_state.dart';

class StudyPage extends StatefulWidget {
  @override
  _StudyPageState createState() => _StudyPageState();
}

class _StudyPageState extends State<StudyPage> {

  final pages = [
    PathRecommendWidget(),
    StudyAssemblesWidget(),
    KnowledgeGraphWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        // 导航栏
        appBar: AppBar(
          // 顶部标题
          title: Text(
            appState.appTitle,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          // 左侧
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.account_circle, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
        ),
        // 抽屉
        drawer: StudyDrawer(),
        // 底部导航
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_calls),
              title: Text('学习路径推荐'),
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.book), title: Text('知识碎片学习')),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              title: Text('知识森林概览'),
            ),
          ],
          currentIndex: appState.selectedNavigationItem,
          onTap: _onNavigationItemTap,
        ),

        body: pages[appState.selectedNavigationItem],
      ),
    );
  }

  void _onNavigationItemTap(int index) {
    appState.setSelectedNavigationItem(index);
  }
}

class StudyDrawer extends StatelessWidget {
  const StudyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      //移除顶部padding
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(context), //构建抽屉菜单头部
            Expanded(child: _buildMenus(context)), //构建功能菜单
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return GestureDetector(
        child: Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(top: 40, bottom: 20),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipOval(
              // 如果已登录，则显示用户头像；若未登录，则显示默认头像
              child: Image.asset("imgs/avatar-default.jpg",
                  width: 80, fit: BoxFit.scaleDown),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Yotta同学',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '在线时长: 1 小时',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
    ));
  }

  // 构建菜单项
  Widget _buildMenus(context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('设置'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.power_settings_new),
          title: Text('注销'),
          onTap: () {},
        ),
      ],
    );
  }
}
