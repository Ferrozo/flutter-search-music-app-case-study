import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:search_music_app/src/domain/song.dart';
import 'package:search_music_app/src/presentation/screens/home/home.dart';
import 'package:search_music_app/src/presentation/widgets/export_widgets.dart';

class MockSongCubit extends MockCubit<SongState> implements SongCubit {}

class MockAudioPlayerCubit extends MockCubit<AudioPlayerState>
    implements AudioPlayerCubit {}

void main() {
  late SongCubit mockSongCubit;
  late AudioPlayerCubit mockAudioPlayerCubit;

  setUp(() {
    mockSongCubit = MockSongCubit();
    mockAudioPlayerCubit = MockAudioPlayerCubit();
  });

  group(
    'Home Page widget test',
    () {
      testWidgets(
        'render initial empty page when songState is initial',
        (widgetTester) async {
          when(() => mockSongCubit.state).thenReturn(SongState.initial());

          await widgetTester.pumpWidget(MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (_) => mockSongCubit,
              ),
              BlocProvider(
                create: () => mockAudioPlayerCubit,
              ),
            ],
            child: const MaterialApp(
              home: HomePage(),
            ),
          ));

          expect(find.byType(SearchContainer), findsOneWidget);
          expect(find.byKey(const Key('__initial__')), findsOneWidget);
          expect(find.byType(AudioPlayerContainer), findsOneWidget);
        },
      );

      testWidgets(
        'test render processing when SongState is loading',
        (widgetTester) async {
          when(() => mockSongCubit.state).thenReturn(
            const SongState(
              status: SongStatus.loading(),
            ),
          );
          await widgetTester.pumpWidget(
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => mockSongCubit),
                BlocProvider(create: (_) => mockAudioPlayerCubit),
              ],
              child: const MaterialApp(home: HomePage()),
            ),
          );

          expect(find.byType(SearchContainer), findsOneWidget);
          expect(find.byType(CircularProgressIndicator), findsOneWidget);
          expect(find.byType(AudioPlayerContainer), findsOneWidget);
        },
      );

      testWidgets(
        'render an empty page with no results when the SongState is sucess with an empty body',
        (widgetTester) async {
          when(() => mockSongCubit.state).thenReturn(
            const SongState(
              status: SongStatus.success(),
              songs: [],
            ),
          );

          await widgetTester.pumpWidget(
            MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (_) => mockSongCubit,
                ),
                BlocProvider(
                  create: (_) => mockAudioPlayerCubit,
                ),
              ],
              child: const MaterialApp(
                home: HomePage(),
              ),
            ),
          );

          expect(find.byType(SearchContainer), findsOneWidget);
          expect(find.byKey(const Key('__noResult__')), findsOneWidget);
          expect(find.byType(AudioPlayerContainer), findsOneWidget);
        },
      );

      testWidgets(
        'render a SongListView when the SongState is success with valid body',
        (widgetTester) async {
          const fakeSong = Song(previewUrl: '');
          when(() => mockSongCubit.state).thenReturn(
            const SongState(status: SongStatus.success(), songs: [fakeSong]),
          );
          await widgetTester.pumpWidget(
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => mockSongCubit),
                BlocProvider(create: (_) => mockAudioPlayerCubit),
              ],
              child: const MaterialApp(home: HomePage()),
            ),
          );

          expect(find.byType(SearchContainer), findsOneWidget);
          expect(find.byType(SongListView), findsOneWidget);
          expect(find.byType(AudioPlayerContainer), findsOneWidget);
        },
      );

      testWidgets(
        'render failure when the SongState is failure',
        (widgetTester) async {
          when(() => mockSongCubit.state).thenReturn(
            const SongState(status: SongStatus.failure()),
          );

          await widgetTester.pumpWidget(
            MultiBlocProvider(
              providers: [
                BlocProvider(create: (_) => mockSongCubit),
                BlocProvider(create: (_) => mockAudioPlayerCubit)
              ],
              child: const MaterialApp(home: HomePage()),
            ),
          );

          expect(find.byType(SearchContainer), findsOneWidget);
          expect(find.byKey(const Key('__searchFailed__')), findsOneWidget);
          expect(find.byType(AudioPlayerContainer), findsOneWidget);
        },
      );
    },
  );
}
