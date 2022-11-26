// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:search_music_app/src/domain/song.dart';
import 'package:search_music_app/src/infrastruture/song_remote_repository.dart';

part 'song_state.dart';
part 'song_cubit.freezed.dart';

class SongCubit extends Cubit<SongState> {
  SongCubit(this._songRemoteRepository) : super(SongState.initial());
  final SongRemoteRepository _songRemoteRepository;

  Future<void> fetchSongs(String? searchTerm) async {
    if (searchTerm == null || searchTerm.isEmpty) {
      return;
    }

    emit(state.copyWith(status: const SongStatus.loading()));

    var failureOrSucess = await _songRemoteRepository.fetchSongs(searchTerm);
    return failureOrSucess.fold(
      (failure) => emit(
        state.copyWith(
          status: const SongStatus.failure(),
        ),
      ),
      (songs) => emit(
        state.copyWith(
          status: const SongStatus.success(),
          songs: songs,
        ),
      ),
    );
  }
}
