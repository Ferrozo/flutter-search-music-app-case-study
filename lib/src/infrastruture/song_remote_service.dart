import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:search_music_app/src/infrastruture/song_dto.dart';

class SongRequestException implements Exception {}

class SongRemoteService {
  final http.Client _httpClient;
  static const _baseUrl = 'itunes.apple.com';

  SongRemoteService({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  Future<List<SongDTO>> fecthSongs(String searchTitle) async {
    try {
      var songRequest = Uri.https(
        _baseUrl,
        'search',
        <String, String>{
          'term': searchTitle,
          'media': 'music',
          'attribute': 'artistTerm',
          'limit': '5'
        },
      );

      var songResponse = await _httpClient.get(songRequest);

      if (songResponse.statusCode != 200) {
        throw SongRequestException();
      }

      var songToJson = json.decode(songResponse.body);
      final List<dynamic> results = songToJson['results'];
      return results.map((song) => SongDTO.fromJson(song)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
