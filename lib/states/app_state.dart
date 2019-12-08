import 'package:mobx/mobx.dart';
import 'package:flutter_smart_education/common/API.dart';

// 要和文件名一致！！！！！
part 'app_state.g.dart';

class AppState = _AppState with _$AppState;

abstract class _AppState with Store {
  // 全部主题
  @observable
  List allTopics;

  // 以id为key的主题列表
  Map allTopicsMap;

  // 当前显示主题
  @observable
  List currentTopics;

  // 学习类型
  @observable
  String learningType = 'all';

  // 当前选中主题
  @observable
  int currentTopicId = 21;

  // 当前主题名称
  @observable
  String currentTopicName = '数据结构';

  // 领域序号
  @observable
  int domainId = 1;

  // 领域名
  @observable
  String domainName = '数据结构';

  // 学号
  @observable
  int currentStudentId = 3117033016;

  // 目标主题id
  @observable
  int termId = 1;

  // 碎片类型
  @observable
  String assembleType = 'text';

  // 当前主题下的碎片
  @observable
  List assemblesOfCurrentTopic;

  // app标题
  @observable
  String appTitle = '智慧教育示范应用';

  // 当前tab
  @observable
  int selectedNavigationItem = 0;

  @action
  void setTopicId(cid) {
    this.currentTopicId = cid;
  }

  @action
  void setAppTitle(title) {
    appTitle = title;
  }

  @action
  void setTermId(tid){
    termId = tid;
  }

  @action
  void setTopicName(tn) {
    currentTopicName = tn;
  }

  @action
  void setSelectedNavigationItem(it) {
    selectedNavigationItem = it;
  }

  @action
  void setLearningType(lt) {
    if (learningType != lt) {
      learningType = lt;
      fetchLearningPath();
    }
  }

  // 获取碎片
  @action
  void fetchAssembles() {
    assemblesOfCurrentTopic = null;
    YottaAPI.getAssembles(
            currentTopicId, currentStudentId, assembleType, 0, 10, false)
        .then((ass) {
      assemblesOfCurrentTopic = ass['data']['content'];
    });
  }

  // 获取全部主题列表
  @action
  void fetchAllTopics() {
    YottaAPI.getTopicStatusList(domainId, currentStudentId).then((tp) {
      allTopics = tp['data'];
      allTopicsMap = {};
      allTopics.forEach((item) {
        allTopicsMap[item['topicId'].toString()] = item;
      });
    });
  }

  // 根据当前学习方式获取路径，并设置当前显示主题
  @action
  void fetchLearningPath() {
    YottaAPI.getLearningPath(learningType, domainId, currentStudentId,
            termId: termId)
        .then((path) {
      currentTopics = [];
      List topicIds = path.toString().split(';')[0].split(',');

      topicIds.forEach((topicId) {
        currentTopics.add(allTopicsMap[topicId]);
      });
    });
  }
}

final AppState appState = AppState();
