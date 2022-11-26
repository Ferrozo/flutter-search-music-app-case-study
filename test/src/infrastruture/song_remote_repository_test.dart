import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:search_music_app/src/domain/song.dart';
import 'package:search_music_app/src/domain/song_failure.dart';
import 'package:search_music_app/src/infrastruture/song_dto.dart';
import 'package:search_music_app/src/infrastruture/song_remote_repository.dart';
import 'package:search_music_app/src/infrastruture/song_remote_service.dart';

class MockSongRemoteService extends Mock implements SongRemoteService {}

void main() {
  late MockSongRemoteService mockSongRemoteService;
  late SongRemoteRepository songRemoteRepository;

  setUp(() {
    mockSongRemoteService = MockSongRemoteService();
    songRemoteRepository = SongRemoteRepository(mockSongRemoteService);
  });

  group(
    '[SongRemoteRepository]',
    () {
      var query = 'foo';

      test(
        'return a SongFailure on fetchSongs failed',
        () async {
          var exception = Exception('oops something went wrong');
          when(
            () => mockSongRemoteService.fetchSongs(query),
          ).thenThrow(exception);

          final result = await songRemoteRepository.fetchSongs(query);

          expect(result.isLeft(), true);
          expect(
            result.fold(id, id),
            isA<SongFailure>(),
          );
        },
      );

      test(
        'returns correct songs on fetchSongs sucess',
        () async {
          when(() => mockSongRemoteService.fetchSongs(query)).thenAnswer(
            (_) async => const [
              SongDTO(
                artistName: 'Eminem',
                collectionName: 'The Marshall Mathers LP2(Deluxe)',
                trackName: 'Rap God',
                artworkUrl100:
                    'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/45/14/f2/4514f2fe-7b1d-fc12-b9bc-bafe6a877ff3/source/100x100bb.jpg',
                previewUrl:
                    'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview128/v4/7e/de/52/7ede5258-4a12-50c1-d4f0-7f58defe02b0/mzaf_2628383916915879028.plus.aac.p.m4a',
              ),
            ],
          );

          final result = await songRemoteRepository.fetchSongs(query);

          expect(result.isRight(), true);
          expect(
            result.fold(id, id),
            const [
              Song(
                artistName: 'Eminem',
                collectionName: 'The Marshall Mathers LP2(Deluxe)',
                trackName: 'Rap God',
                artworkUrl100:
                    'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/45/14/f2/4514f2fe-7b1d-fc12-b9bc-bafe6a877ff3/source/100x100bb.jpg',
                previewUrl:
                    'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview128/v4/7e/de/52/7ede5258-4a12-50c1-d4f0-7f58defe02b0/mzaf_2628383916915879028.plus.aac.p.m4a',
              ),
            ],
          );
        },
      );
    },
  );
}
