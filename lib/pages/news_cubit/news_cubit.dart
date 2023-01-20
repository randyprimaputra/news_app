import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:news_app/core/failures_successes/failures.dart';
import '../../core/services/services_locator.dart';
import 'package:news_app/pages/domain/entities/news_info.dart';
import 'package:news_app/pages/domain/usecases/fetch_news.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial(news: const []));

  final FetchNewsUsecases _fetchNewsUsecases = s1<FetchNewsUsecases>();

  void fetchNews(String? searchText) async {
    emit(NewsError());

    emit(NewsLoading());

    final Either<Failure, List<NewsInfo>> fetchNewsResult =
        await _fetchNewsUsecases.fetchNews(searchText);
    fetchNewsResult.fold((l) {
      emit(NewsError());
    }, (news) {
      if (searchText != null) {
        emit(NewsInitialSearch(news: news));
      } else {
        emit(NewsInitial(news: news));
      }
    });
  }
}
