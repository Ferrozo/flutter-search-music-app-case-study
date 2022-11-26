import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';
import 'package:search_music_app/src/presentation/widgets/export_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const SearchContainer(),
      ),
      body: Stack(
        children: [
          Expanded(
            child: BlocBuilder<SongCubit, SongState>(
              builder: (context, state) => state.status.when(
                initial: () => EmptyContainer(
                  Key: Key('__initial__'),
                  text: 'Start a search',
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                ),
                success: () => state.songs.isEmpty
                    ? SongListView(song: state.songs)
                    : const EmptyContainer(
                        Key: Key('__noResult__'),
                        text: 'No result for this search',
                      ),
                failure: () => const EmptyContainer(
                  Key: Key('__searchFailed__'),
                  text: 'Oops! Something went wrong.',
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
