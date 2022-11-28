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
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 100.0,
              snap: false,
              floating: true,
              pinned: true,
              title: const SearchContainer(),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Container(
                  padding: const EdgeInsets.all(20),
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ),
          ];
        },
        body: Stack(
          children: [
            Expanded(
              child: BlocBuilder<SongCubit, SongState>(
                builder: (context, state) => state.status.when(
                  initial: () => const EmptyContainer(
                    key: Key('__initial__'),
                    img: 'src/assets/music_search.png',
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
                          img: 'src/assets/no_result.png',
                          text: 'No result for this search!',
                        ),
                  failure: () => const EmptyContainer(
                    key: Key('__searchFailed__'),
                    img: 'src/assets/music_search.png',
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
      ),
    );
  }
}
