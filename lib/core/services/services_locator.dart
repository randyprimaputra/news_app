import 'package:get_it/get_it.dart';
import 'package:news_app/core/services/api_service.dart';
import 'package:news_app/pages/data/data_sources/fetch_from_remote_ds.dart';
import 'package:news_app/pages/data/repositories/fetch_repo_impl.dart';
import 'package:news_app/pages/domain/repositories/fetch_repo_contract.dart';

final GetIt s1 = GetIt.instance;

void setUpServices() {
  s1.registerSingleton<ApiService>(ApiServiceImpl());
  s1.registerSingleton<FetchFromRemoteDS>(FetchFromRemoteDSImpl());
  s1.registerSingleton<FetchRepo>(FetchRepoImpl());
}
