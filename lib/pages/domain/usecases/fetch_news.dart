import 'package:dartz/dartz.dart';
import 'package:news_app/core/failures_successes/failures.dart';
import 'package:news_app/core/services/services_locator.dart';
import 'package:news_app/pages/domain/entities/news_info.dart';
import 'package:news_app/pages/domain/repositories/fetch_repo_contract.dart';

class FetchNewsUsecases {
  final FetchRepo fetchRepo = s1<FetchRepo>();

  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText) {
    return fetchRepo.fetchNews(searchText);
  }
}
