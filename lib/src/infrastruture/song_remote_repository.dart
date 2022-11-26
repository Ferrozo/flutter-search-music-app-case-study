import 'package:dartz/dartz.dart';
import 'package:search_music_app/src/domain/song.dart';
import 'package:search_music_app/src/domain/song_failure.dart';
import 'package:search_music_app/src/infrastruture/song_remote_service.dart';

class SongRemoteRepository {
  SongRemoteRepository(this._songRemoteService);
  final SongRemoteService _songRemoteService;

  Future<Either<SongFailure, List<Song>>> fetchSongs(serchTerm) async {
    try {
      var songDTOs = await _songRemoteService.fecthSongs(serchTerm);
      var songs = songDTOs.map((song) => song.toDomain()).toList();

      return right(songs);
    } catch (e) {
      return left(SongFailure.api(e.toString()));
    }
  }
}
