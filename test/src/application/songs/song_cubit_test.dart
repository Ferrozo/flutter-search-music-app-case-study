import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';
import 'package:search_music_app/src/domain/song.dart';
import 'package:search_music_app/src/domain/song_failure.dart';
import 'package:search_music_app/src/infrastruture/song_remote_repository.dart';

class MockSongRemoteRepository extends Mock implements SongRemoteRepository {}

void main() {
  late MockSongRemoteRepository mockSongRemoteRepository;
  late SongCubit songCubit;
  setUp(
    () {
      mockSongRemoteRepository = MockSongRemoteRepository();
      songCubit = SongCubit(mockSongRemoteRepository);
    },
  );

  group(
    '[Test SongCubit]',
    () {
      const fakeSong = Song(
        artistName: 'artistName',
        collectionName: 'collectionName',
        trackName: 'trackName',
        artworkUrl100: 'artworkUrl100',
        previewUrl: 'previewUrl',
      );

      test('initial state is correct', () {
        expect(
          songCubit.state,
          SongState.initial(),
        );
      });

      blocTest<SongCubit, SongState>(
        'its happen when SongState.initial() emits nothing when song is null',
        build: () => songCubit,
        act: (cubit) => cubit.fetchSongs(null),
        expect: () => <SongState>[],
      );

      blocTest<SongCubit, SongState>(
        'Its happen when SongStatus.loading and SongStatus.failure emit [loading, failure] when songSearch throws',
        setUp: () {
          when(() => mockSongRemoteRepository.fetchSongs(any()))
              .thenAnswer((_) async => left(const SongFailure.api('oops')));
        },
        build: () => songCubit,
        act: (cubit) => cubit.fetchSongs('Test'),
        expect: () => <SongState>[
          const SongState(status: SongStatus.loading()),
          const SongState(status: SongStatus.failure()),
        ],
      );

      blocTest<SongCubit, SongState>(
        ' Its happen when SongStatus.loading and SongStatus.sucess emit [loading, sucess] when songsSearch returns',
        setUp: () {
          when(() => mockSongRemoteRepository.fetchSongs(any())).thenAnswer(
            (_) async => right(
              [fakeSong],
            ),
          );
        },
        build: () => songCubit,
        act: (cubit) => cubit.fetchSongs('Test'),
        expect: () => <dynamic>[
          const SongState(status: SongStatus.loading()),
          const SongState(status: SongStatus.success(), songs: [fakeSong]),
        ],
      );
    },
  );
}
