import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';
import 'package:search_music_app/src/infrastruture/song_remote_repository.dart';
import 'package:search_music_app/src/infrastruture/song_remote_service.dart';
import 'package:search_music_app/src/presentation/screens/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(
    MyApp(
      songCubit: SongCubit(
        SongRemoteRepository(
          SongRemoteService(),
        ),
      ),
    ),
  );
}
