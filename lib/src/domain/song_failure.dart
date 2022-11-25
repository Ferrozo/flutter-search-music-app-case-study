import 'package:freezed_annotation/freezed_annotation.dart';

part 'song_faliure.freezed.dart';

@freezed
class SongFaliure with _$SongFailure {
  const SongFailure._();
  const factory SongFailure.api(String? errorMessage) = _Api;
}