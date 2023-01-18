import 'package:news_app/core/failures_successes/exceptions.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/pages/data/models/news_info_model.dart';

abstract class FetchFromRemoteDS {
  Future<List<NewsInfoModel>> fetchNews(String? searchText);
}

class FetchFromRemoteDSImpl implements FetchFromRemoteDS {
  final ApiService apiService;
  FetchFromRemoteDSImpl({required this.apiService});

  @override
  Future<List<NewsInfoModel>> fetchNews(String? searchText) async {
    try {
      Map<String, dynamic> data = await apiService.getData();

      List list = data['articles'];
      List<Map<String, dynamic>> maplist = [];
      for (int i = 0; i < list.length; i++) {
        Map<String, dynamic> map = list[i] as Map<String, dynamic>;
        maplist.add(map);
      }

      List<NewsInfoModel> news = [];
      for (int i = 0; i < maplist.length; i++) {
        NewsInfoModel newsInfoModel = NewsInfoModel.fromMap(maplist[i]);
        news.add(newsInfoModel);
      }

      return news;
    } catch (e) {
      throw const FetchException(message: 'Failed to get data');
    }
  }
}
