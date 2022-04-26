// Mocks generated by Mockito 5.1.0 from annotations
// in ditonton/test/presentation/pages/tv_show_detail_page_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i11;
import 'dart:ui' as _i12;

import 'package:ditonton/common/state_enum.dart' as _i9;
import 'package:ditonton/domain/entities/tv/tv.dart' as _i10;
import 'package:ditonton/domain/entities/tv/tv_detail.dart' as _i7;
import 'package:ditonton/domain/usecases/tv/get_tv_detail.dart' as _i2;
import 'package:ditonton/domain/usecases/tv/get_tv_recommendations.dart' as _i3;
import 'package:ditonton/domain/usecases/tv/get_watchlist_status_tv.dart'
    as _i4;
import 'package:ditonton/domain/usecases/tv/remove_watchlist_tv.dart' as _i6;
import 'package:ditonton/domain/usecases/tv/save_watchlist_tv.dart' as _i5;
import 'package:ditonton/presentation/provider/tv/tv_detail_notifier.dart'
    as _i8;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeGetTVShowDetail_0 extends _i1.Fake implements _i2.GetTVDetail {}

class _FakeGetTVShowRecommendations_1 extends _i1.Fake
    implements _i3.GetTVRecommendations {}

class _FakeGetWatchListStatusTVShow_2 extends _i1.Fake
    implements _i4.GetWatchListStatusTV {}

class _FakeSaveWatchlistTVShow_3 extends _i1.Fake
    implements _i5.SaveWatchlistTV {}

class _FakeRemoveWatchlistTVShow_4 extends _i1.Fake
    implements _i6.RemoveWatchlistTV {}

class _FakeTVShowDetail_5 extends _i1.Fake implements _i7.TVDetail {}

/// A class which mocks [TVShowDetailNotifier].
///
/// See the documentation for Mockito's code generation for more information.
class MockTVShowDetailNotifier extends _i1.Mock
    implements _i8.TVDetailNotifier {
  MockTVShowDetailNotifier() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GetTVDetail get getTVShowDetail =>
      (super.noSuchMethod(Invocation.getter(#getTVShowDetail),
          returnValue: _FakeGetTVShowDetail_0()) as _i2.GetTVDetail);
  @override
  _i3.GetTVRecommendations get getTVShowRecommendations =>
      (super.noSuchMethod(Invocation.getter(#getTVShowRecommendations),
              returnValue: _FakeGetTVShowRecommendations_1())
          as _i3.GetTVRecommendations);
  @override
  _i4.GetWatchListStatusTV get getWatchListStatusTVShow =>
      (super.noSuchMethod(Invocation.getter(#getWatchListStatusTVShow),
              returnValue: _FakeGetWatchListStatusTVShow_2())
          as _i4.GetWatchListStatusTV);
  @override
  _i5.SaveWatchlistTV get saveWatchlist =>
      (super.noSuchMethod(Invocation.getter(#saveWatchlist),
          returnValue: _FakeSaveWatchlistTVShow_3()) as _i5.SaveWatchlistTV);
  @override
  _i6.RemoveWatchlistTV get removeWatchlist => (super.noSuchMethod(
      Invocation.getter(#removeWatchlist),
      returnValue: _FakeRemoveWatchlistTVShow_4()) as _i6.RemoveWatchlistTV);
  @override
  _i7.TVDetail get tvShowDetail =>
      (super.noSuchMethod(Invocation.getter(#tvShowDetail),
          returnValue: _FakeTVShowDetail_5()) as _i7.TVDetail);
  @override
  _i9.RequestState get tvShowState =>
      (super.noSuchMethod(Invocation.getter(#tvShowState),
          returnValue: _i9.RequestState.Empty) as _i9.RequestState);
  @override
  List<_i10.Tv> get tvShowRecommendations =>
      (super.noSuchMethod(Invocation.getter(#tvShowRecommendations),
          returnValue: <_i10.Tv>[]) as List<_i10.Tv>);
  @override
  _i9.RequestState get recommendationState =>
      (super.noSuchMethod(Invocation.getter(#recommendationState),
          returnValue: _i9.RequestState.Empty) as _i9.RequestState);
  @override
  String get message =>
      (super.noSuchMethod(Invocation.getter(#message), returnValue: '')
          as String);
  @override
  bool get isAddedToWatchlist =>
      (super.noSuchMethod(Invocation.getter(#isAddedToWatchlist),
          returnValue: false) as bool);
  @override
  String get watchlistMessage =>
      (super.noSuchMethod(Invocation.getter(#watchlistMessage), returnValue: '')
          as String);
  @override
  bool get hasListeners =>
      (super.noSuchMethod(Invocation.getter(#hasListeners), returnValue: false)
          as bool);
  @override
  _i11.Future<void> fetchTVShowDetail(int? id) => (super.noSuchMethod(
      Invocation.method(#fetchTVShowDetail, [id]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> addWatchlist(_i7.TVDetail? tvShow) => (super.noSuchMethod(
      Invocation.method(#addWatchlist, [tvShow]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> removeFromWatchlist(_i7.TVDetail? tvShow) =>
      (super.noSuchMethod(Invocation.method(#removeFromWatchlist, [tvShow]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i11.Future<void> loadWatchlistStatus(int? id) => (super.noSuchMethod(
      Invocation.method(#loadWatchlistStatus, [id]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  void addListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#addListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void removeListener(_i12.VoidCallback? listener) =>
      super.noSuchMethod(Invocation.method(#removeListener, [listener]),
          returnValueForMissingStub: null);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
  @override
  void notifyListeners() =>
      super.noSuchMethod(Invocation.method(#notifyListeners, []),
          returnValueForMissingStub: null);
}
