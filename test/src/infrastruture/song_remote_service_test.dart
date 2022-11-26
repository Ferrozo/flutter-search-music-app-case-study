import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import 'package:mocktail/mocktail.dart';
import 'package:http/http.dart' as http;
import 'package:search_music_app/src/infrastruture/song_dto.dart';
import 'package:search_music_app/src/infrastruture/song_remote_service.dart';

import '../../fixtures/fixture_reader.dart';

class MockResponse extends Mock implements http.Response {}

class MockHttpClient extends Mock implements http.Client {}

main() {
  late http.Client mockHttpClient;
  late SongRemoteService songRemoteService;

  setUp(
    () {
      mockHttpClient = MockHttpClient();
      songRemoteService = SongRemoteService(httpClient: mockHttpClient);
    },
  );

  group(
    '[Test SongRemoteService]',
    () {
      const query = 'yellow';
      var uri = Uri.https(
        'itunes.apple.com',
        'search',
        <String, String>{
          'term': query,
          'media': 'music',
          'attribute': 'artistTerm',
          'limit': '5'
        },
      );

      test(
        'construtor does not require an httpClient',
        () {
          expect(SongRemoteService(), null);
        },
      );

      test(
        'make a correct http requst',
        () async {
          var response = MockResponse();
          var body = fixture('empty_result.json');
          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(body);
          when(() => mockHttpClient.get(uri)).thenAnswer((_) async => response);

          await songRemoteService.fecthSongs(query);

          verify(
            () => mockHttpClient.get(uri),
          ).called(1);
        },
      );

      test(
        'throws as SongRequestException on non-200 response',
        () async {
          var response = MockResponse();
          when(() => response.statusCode).thenReturn(400);
          when(() => mockHttpClient.get(uri)).thenAnswer(
            (_) async => response,
          );

          expect(
            () async => await songRemoteService.fecthSongs(query),
            throwsA(isA<SongRequestException>()),
          );
        },
      );

      test(
        'returns an empty List<SongDTO> if the result is empty',
        () async {
          var response = MockResponse();
          var body = fixture('empty_result.json');

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(body);
          when(() => mockHttpClient.get(uri)).thenAnswer(
            (_) async => response,
          );

          final actual = await songRemoteService.fecthSongs(query);
          expect(
            actual,
            isA<List<SongDTO>>()
                .having((songs) => songs.isEmpty, 'empty songs', true),
          );
        },
      );

      test(
        'returns a List<SongDTO> if the results in response has value',
        () async {
          var response = MockResponse();
          var body = fixture('result_with_valid_body.json');
          var json = jsonDecode(body) as Map<String, dynamic>;
          final List<dynamic> results = json['results'];
          var songs = results.map((json) => SongDTO.fromJson(json)).toList();

          when(() => response.statusCode).thenReturn(200);
          when(() => response.body).thenReturn(body);
          when(() => mockHttpClient.get(uri)).thenAnswer(
            (_) async => response,
          );

          final actual = await songRemoteService.fecthSongs(query);
          expect(actual, songs);
        },
      );
    },
  );
}
