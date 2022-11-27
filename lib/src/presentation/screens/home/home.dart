import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';
import 'package:search_music_app/src/presentation/widgets/export_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const SearchContainer(),
      ),
      body: Stack(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: BlocBuilder<SongCubit, SongState>(
                builder: (context, state) => state.status.when(
                  initial: () => const EmptyContainer(
                    key: Key('__initial__'),
                    text: 'Start a search',
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(
                      color: Colors.green,
                    ),
                  ),
                  success: () => state.songs.isNotEmpty
                      ? SongListView(songs: state.songs)
                      : const EmptyContainer(
                          key: Key('__noResult__'),
                          text: 'No result for this search',
                        ),
                  failure: () => const EmptyContainer(
                    key: Key('__searchFailed__'),
                    text: 'Oops! Something went wrong.',
                  ),
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: AudioPlayerContainer(),
          ),
        ],
      ),
    );
  }
}
