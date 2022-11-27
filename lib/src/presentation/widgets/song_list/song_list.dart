import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_music_app/src/application/audio_player/audio_player_cubit.dart';
import 'package:search_music_app/src/domain/song.dart';

class SongListView extends StatefulWidget {
  const SongListView({Key? key, required this.songs}) : super(key: key);
  final List<Song> songs;

  @override
  State<SongListView> createState() => _SongListViewState();
}

class _SongListViewState extends State<SongListView>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final ValueNotifier<ScrollDirection> scrollDirectionNotifier =
      ValueNotifier<ScrollDirection>(ScrollDirection.forward);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(microseconds: 300),
    )..forward();
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<UserScrollNotification>(
      onNotification: (UserScrollNotification notification) {
        if (notification.direction == ScrollDirection.forward ||
            notification.direction == ScrollDirection.reverse) {
          scrollDirectionNotifier.value = notification.direction;
        }
        return true;
      },
      child: ListView.builder(
        cacheExtent: 0,
        itemCount: widget.songs.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
              context
                  .read<AudioPlayerCubit>()
                  .seekToIndex(index: i, playList: widget.songs);
            },
            child: SizedBox(
              height: 100,
              width: 200,
              child: Card(
                elevation: 2,
                color: Colors.grey.withOpacity(0.2),
                // margin: const EdgeInsets.all(8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: SizedBox(
                        width: 60,
                        height: 100,
                        child: widget.songs[i].artworkUrl100 != null
                            ? Image.network(
                                widget.songs[i].artworkUrl100!,
                                fit: BoxFit.cover,
                                errorBuilder: (_, __, ___) => Image.asset(
                                  'src/assets/no_album_art.jpg',
                                  fit: BoxFit.cover,
                                ),
                              )
                            : Image.asset(
                                'src/assets/no_album_art.jpg',
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.songs[i].trackName ?? 'Unknown Track',
                            maxLines: 1,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textScaleFactor: 1.1,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            widget.songs[i].artistName ?? 'Unknown Artist',
                            maxLines: 1,
                            style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.white70,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                              widget.songs[i].collectionName ?? 'Unknown Album',
                              maxLines: 1,
                              style: const TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.white70,
                                fontSize: 12,
                              )),
                        ],
                      ),
                    ),
                  ),

                  // Widget displaying the selected/playing song indicator.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(width: 20.0),
                      BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
                        builder: (context, state) {
                          if (state.currentIndex == i &&
                              state.isPlaying &&
                              widget.songs[i].previewUrl ==
                                  state.playList[i].previewUrl) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 20.0),
                              child: Icon(
                                Icons.bar_chart,
                                color: Colors.green,
                              ),
                            );
                          }
                          return const Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white70,
                            ),
                          );
                        },
                      ),
                    ],
                  )
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}

// class ChildWrapper extends StatefulWidget {
//   const ChildWrapper({
//     Key? key,
//     required this.child,
//     this.keepAlive = false,
//   }) : super(key: key);

//   final bool keepAlive;
//   final Widget child;

//   @override
//   State<ChildWrapper> createState() => _ChildWrapperState();
// }

// class _ChildWrapperState extends State<ChildWrapper>
//     with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
//   //...
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return AnimationWidget();
//   }

//   @override
//   bool get wantKeepAlive => widget.keepAlive;
// }
