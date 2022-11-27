import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';
import 'package:search_music_app/src/presentation/screens/home/home.dart';

import '../../../application/audio_player/audio_player_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.songCubit}) : super(key: key);
  final SongCubit songCubit;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => songCubit),
        BlocProvider(
          create: (_) => AudioPlayerCubit(songCubit: songCubit)..init(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
