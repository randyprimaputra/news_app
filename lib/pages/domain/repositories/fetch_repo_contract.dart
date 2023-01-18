import 'package:dartz/dartz.dart';
import 'package:news_app/core/failures_successes/failures.dart';
import 'package:news_app/pages/domain/entities/news_info.dart';

abstract class FetchRepo {
  Future<Either<Failure, List<NewsInfo>>> fetchNews(String? searchText);
}
