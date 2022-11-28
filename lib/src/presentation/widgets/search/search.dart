import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:search_music_app/src/application/song/song_cubit.dart';

class SearchContainer extends StatefulWidget {
  const SearchContainer({Key? key}) : super(key: key);

  @override
  State<SearchContainer> createState() => _SearchContainerState();
}

class _SearchContainerState extends State<SearchContainer> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      alignment: Alignment.center,
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: IconButton(
              onPressed: () async {
                if (_textEditingController.text.isNotEmpty) {
                  final song = _textEditingController.text;
                  await context.read<SongCubit>().fetchSongs(song);
                  // ignore: use_build_context_synchronously
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
              icon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: TextField(
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 5),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintStyle: const TextStyle(color: Colors.grey),
                fillColor: Colors.grey,
                hintText: 'Search by artist name',
                suffixIcon: IconButton(
                  onPressed: () {
                    _textEditingController.clear();
                  },
                  icon: const Icon(CupertinoIcons.delete_left),
                ),
              ),
              key: const Key('__searchField__'),
              controller: _textEditingController,
              textInputAction: TextInputAction.done,
              onEditingComplete: () async {
                if (_textEditingController.text.isNotEmpty) {
                  final song = _textEditingController.text;
                  await context.read<SongCubit>().fetchSongs(song);
                  // ignore: use_build_context_synchronously
                  FocusScope.of(context).requestFocus(FocusNode());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
