import 'dart:async';
import 'package:dio/dio.dart';

class YottaAPI {
  static Dio dio = new Dio(BaseOptions(
    baseUrl: 'http://yotta.xjtushilei.com:8083/',
  ));

  static Dio dio_9218 = new Dio(
    BaseOptions(
        baseUrl: 'http://yotta.xjtushilei.com:9218/',
        responseType: ResponseType.plain),
  );

  // 获取列表
  static Future getTopicStatusList(int domainId, int userId) async {
    Response response = await dio.get(
        '/topicState/getByDomainIdAndUserIdGroupTopicId/',
        queryParameters: {'domainId': domainId, 'userId': userId});

    return response.data;
  }

  // 获取碎片
  static Future getAssembles(int topicId, int userId, String requestType,
      int page, int size, bool ascOrder) async {
    Response response = await dio.post(
        '/assemble/getAssemblesByTopicIdAndUserIdAndPagingAndSorting',
        queryParameters: {
          'topicId': topicId,
          'userId': userId,
          'requestType': requestType,
          'page': page,
          'size': size,
          'ascOrder': ascOrder
        });
    return response.data;
  }

  // 获取学习路径
  static Future getLearningPath(String learningType, int domainId, int userId,
      {int termId = 1}) async {
    switch (learningType) {
      case 'all':
        Response response = await dio_9218.get(
            '/LearningPathWeb/Path/LearningPath/allLearningPath',
            queryParameters: {
              'domainId': domainId,
              'userId': userId,
            });
        return response;
      case 'define':
        Response response = await dio_9218.get(
            '/LearningPathWeb/Path/LearningPath/defineLearningPath',
            queryParameters: {
              'domainId': domainId,
              'userId': userId,
              'termId': termId,
            });
        return response;
    }
  }
}
