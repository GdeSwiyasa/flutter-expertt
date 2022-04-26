import 'package:dartz/dartz.dart';
import 'package:ditonton/common/failure.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/usecases/tv/get_now_playing_tv.dart';
import 'package:ditonton/domain/usecases/tv/get_popular_tv.dart';
import 'package:ditonton/domain/usecases/tv/get_top_rated_tv.dart';
import 'package:ditonton/presentation/provider/tv/tv_list_notofier.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/dummy_objects.dart';
import 'tv_show_list_notifier_test.mocks.dart';

@GenerateMocks([GetNowPlayingTV, GetPopularTV, GetTopRatedTV])
void main() {
  late TVListNotifier provider;
  late MockGetNowPlayingTVShows mockGetNowPlayingTVShows;
  late MockGetPopularTVShows mockGetPopularTVShows;
  late MockGetTopRatedTVShows mockGetTopRatedTVShows;
  late int listenerCallCount;

  setUp(() {
    listenerCallCount = 0;
    mockGetNowPlayingTVShows = MockGetNowPlayingTVShows();
    mockGetPopularTVShows = MockGetPopularTVShows();
    mockGetTopRatedTVShows = MockGetTopRatedTVShows();
    provider = TVListNotifier(
      getNowPlayingTVShows: mockGetNowPlayingTVShows,
      getPopularTVShows: mockGetPopularTVShows,
      getTopRatedTVShows: mockGetTopRatedTVShows,
    )..addListener(() {
        listenerCallCount += 1;
      });
  });

  group('now playing tv shows', () {
    test('initialState should be Empty', () {
      expect(provider.nowPlayingState, equals(RequestState.Empty));
    });

    test('should get data from the usecase', () async {
      //arrage
      when(mockGetNowPlayingTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      //act
      await provider.fetchNowPlayingTVShows();
      //arrage
      verify(mockGetNowPlayingTVShows.execute());
    });

    test('should  change state to Loading State when usecase is called',
        () async {
      //arrage
      when(mockGetNowPlayingTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      //act
      provider.fetchNowPlayingTVShows();
      //assert
      expect(provider.nowPlayingState, RequestState.Loading);
    });

    test('should return tv shows when data is successfully', () async {
      //arrage
      when(mockGetNowPlayingTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      //act
      await provider.fetchNowPlayingTVShows();
      //assert
      expect(provider.nowPlayingState, RequestState.Loaded);
      expect(provider.nowPlayingTVShows, testTVShowList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      //arrage
      when(mockGetNowPlayingTVShows.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      //act
      await provider.fetchNowPlayingTVShows();
      //assert
      expect(provider.nowPlayingState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });

  group('popular tv shows', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockGetPopularTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      // act
      provider.fetchPopularTVShows();
      // assert
      expect(provider.popularTVShowsState, RequestState.Loading);
    });

    test('should change movies data when data is gotten successfully',
        () async {
      // arrange
      when(mockGetPopularTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      // act
      await provider.fetchPopularTVShows();
      // assert
      expect(provider.popularTVShowsState, RequestState.Loaded);
      expect(provider.popularTVShows, testTVShowList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetPopularTVShows.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await provider.fetchPopularTVShows();
      // assert
      expect(provider.popularTVShowsState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });

  group('top rated tv shows', () {
    test('should change state to loading when usecase is called', () async {
      // arrange
      when(mockGetTopRatedTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      // act
      provider.fetchTopRatedTVShows();
      // assert
      expect(provider.topRatedTVState, RequestState.Loading);
    });

    test('should change movies data when data is gotten successfully',
        () async {
      // arrange
      when(mockGetTopRatedTVShows.execute())
          .thenAnswer((_) async => Right(testTVShowList));
      // act
      await provider.fetchTopRatedTVShows();
      // assert
      expect(provider.topRatedTVState, RequestState.Loaded);
      expect(provider.topRatedTVShows, testTVShowList);
      expect(listenerCallCount, 2);
    });

    test('should return error when data is unsuccessful', () async {
      // arrange
      when(mockGetTopRatedTVShows.execute())
          .thenAnswer((_) async => Left(ServerFailure('Server Failure')));
      // act
      await provider.fetchTopRatedTVShows();
      // assert
      expect(provider.topRatedTVState, RequestState.Error);
      expect(provider.message, 'Server Failure');
      expect(listenerCallCount, 2);
    });
  });
}
