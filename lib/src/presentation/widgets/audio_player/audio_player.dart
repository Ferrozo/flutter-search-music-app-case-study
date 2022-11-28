import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui';
import 'package:search_music_app/src/application/audio_player/audio_player_cubit.dart';
import 'package:search_music_app/src/presentation/widgets/export_widgets.dart';

class AudioPlayerContainer extends StatelessWidget {
  const AudioPlayerContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
      builder: (context, state) {
        if (state.playList.isNotEmpty &&
            (state.currentIndex <= state.playList.length)) {
          return ClipRRect(
            child: SizedBox(
              height: 70,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: ListTile(
                  tileColor: Colors.grey.withOpacity(0.2),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: state.playList[state.currentIndex].artworkUrl100 !=
                              null
                          ? Image.network(
                              state.playList[state.currentIndex].artworkUrl100!,
                              fit: BoxFit.cover,
                            )
                          : Image.asset(
                              'src/assets/assets/no_album_art.jpg',
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  title: Text(
                    state.playList[state.currentIndex].trackName ??
                        'Unknown Track',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  trailing: SizedBox(
                    width: 160,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.skip_previous),
                          color: Colors.white70,
                          onPressed: () async =>
                              context.read<AudioPlayerCubit>().hasPrevious
                                  ? await context
                                      .read<AudioPlayerCubit>()
                                      .seekToPrevious()
                                  : null,
                        ),
                        SizedBox(
                          width: 42,
                          height: 42,
                          child: Center(
                            child: state.status.maybeWhen(
                              buffering: () => const Loading(),
                              loading: () => const Loading(),
                              ready: () => IconButton(
                                icon: const Icon(Icons.play_arrow),
                                splashColor: Colors.transparent,
                                color: Colors.white70,
                                onPressed: () async => await context
                                    .read<AudioPlayerCubit>()
                                    .play(),
                              ),
                              completed: () => IconButton(
                                icon: const Icon(Icons.replay),
                                splashColor: Colors.transparent,
                                color: Colors.white70,
                                onPressed: () async => await context
                                    .read<AudioPlayerCubit>()
                                    .seekToStart(),
                              ),
                              playing: () => IconButton(
                                icon: const Icon(CupertinoIcons.pause),
                                splashColor: Colors.transparent,
                                color: Colors.green,
                                onPressed: () async => await context
                                    .read<AudioPlayerCubit>()
                                    .pause(),
                              ),
                              orElse: () => const IconButton(
                                icon: Icon(CupertinoIcons.play_arrow_solid),
                                splashColor: Colors.transparent,
                                color: Colors.green,
                                onPressed: null,
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.skip_next),
                          color: Colors.white70,
                          onPressed: () async =>
                              context.read<AudioPlayerCubit>().hasNext
                                  ? await context
                                      .read<AudioPlayerCubit>()
                                      .seekToNext()
                                  : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
