import 'package:mocktail/mocktail.dart';
import 'package:search_music_app/src/infrastruture/song_remote_repository.dart';
import 'package:search_music_app/src/infrastruture/song_remote_service.dart';

class MockSongRemoteService extends Mock implements SongRemoteService {}

void main() {
  late MockSongRemoteService mockSongRemoteService;
  late SongRemoteRepository songRemoteRepository;
}
