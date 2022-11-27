// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'audio_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AudioPlayerState {
  AudioPlayerStatus get status => throw _privateConstructorUsedError;
  List<Song> get playList => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AudioPlayerStateCopyWith<AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStateCopyWith<$Res> {
  factory $AudioPlayerStateCopyWith(
          AudioPlayerState value, $Res Function(AudioPlayerState) then) =
      _$AudioPlayerStateCopyWithImpl<$Res, AudioPlayerState>;
  @useResult
  $Res call({AudioPlayerStatus status, List<Song> playList, int currentIndex});

  $AudioPlayerStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$AudioPlayerStateCopyWithImpl<$Res, $Val extends AudioPlayerState>
    implements $AudioPlayerStateCopyWith<$Res> {
  _$AudioPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? playList = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AudioPlayerStatus,
      playList: null == playList
          ? _value.playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AudioPlayerStatusCopyWith<$Res> get status {
    return $AudioPlayerStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AudioPlayerStateCopyWith<$Res>
    implements $AudioPlayerStateCopyWith<$Res> {
  factory _$$_AudioPlayerStateCopyWith(
          _$_AudioPlayerState value, $Res Function(_$_AudioPlayerState) then) =
      __$$_AudioPlayerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AudioPlayerStatus status, List<Song> playList, int currentIndex});

  @override
  $AudioPlayerStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_AudioPlayerStateCopyWithImpl<$Res>
    extends _$AudioPlayerStateCopyWithImpl<$Res, _$_AudioPlayerState>
    implements _$$_AudioPlayerStateCopyWith<$Res> {
  __$$_AudioPlayerStateCopyWithImpl(
      _$_AudioPlayerState _value, $Res Function(_$_AudioPlayerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? playList = null,
    Object? currentIndex = null,
  }) {
    return _then(_$_AudioPlayerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AudioPlayerStatus,
      playList: null == playList
          ? _value._playList
          : playList // ignore: cast_nullable_to_non_nullable
              as List<Song>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AudioPlayerState extends _AudioPlayerState {
  const _$_AudioPlayerState(
      {required this.status,
      required final List<Song> playList,
      required this.currentIndex})
      : _playList = playList,
        super._();

  @override
  final AudioPlayerStatus status;
  final List<Song> _playList;
  @override
  List<Song> get playList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playList);
  }

  @override
  final int currentIndex;

  @override
  String toString() {
    return 'AudioPlayerState(status: $status, playList: $playList, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioPlayerState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._playList, _playList) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_playList), currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioPlayerStateCopyWith<_$_AudioPlayerState> get copyWith =>
      __$$_AudioPlayerStateCopyWithImpl<_$_AudioPlayerState>(this, _$identity);
}

abstract class _AudioPlayerState extends AudioPlayerState {
  const factory _AudioPlayerState(
      {required final AudioPlayerStatus status,
      required final List<Song> playList,
      required final int currentIndex}) = _$_AudioPlayerState;
  const _AudioPlayerState._() : super._();

  @override
  AudioPlayerStatus get status;
  @override
  List<Song> get playList;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_AudioPlayerStateCopyWith<_$_AudioPlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AudioPlayerStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioPlayerStatusCopyWith<$Res> {
  factory $AudioPlayerStatusCopyWith(
          AudioPlayerStatus value, $Res Function(AudioPlayerStatus) then) =
      _$AudioPlayerStatusCopyWithImpl<$Res, AudioPlayerStatus>;
}

/// @nodoc
class _$AudioPlayerStatusCopyWithImpl<$Res, $Val extends AudioPlayerStatus>
    implements $AudioPlayerStatusCopyWith<$Res> {
  _$AudioPlayerStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'AudioPlayerStatus.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements AudioPlayerStatus {
  const factory _Idle() = _$_Idle;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AudioPlayerStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AudioPlayerStatus {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_BufferingCopyWith<$Res> {
  factory _$$_BufferingCopyWith(
          _$_Buffering value, $Res Function(_$_Buffering) then) =
      __$$_BufferingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BufferingCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Buffering>
    implements _$$_BufferingCopyWith<$Res> {
  __$$_BufferingCopyWithImpl(
      _$_Buffering _value, $Res Function(_$_Buffering) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Buffering implements _Buffering {
  const _$_Buffering();

  @override
  String toString() {
    return 'AudioPlayerStatus.buffering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Buffering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return buffering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return buffering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return buffering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return buffering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering(this);
    }
    return orElse();
  }
}

abstract class _Buffering implements AudioPlayerStatus {
  const factory _Buffering() = _$_Buffering;
}

/// @nodoc
abstract class _$$_ReadyCopyWith<$Res> {
  factory _$$_ReadyCopyWith(_$_Ready value, $Res Function(_$_Ready) then) =
      __$$_ReadyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReadyCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Ready>
    implements _$$_ReadyCopyWith<$Res> {
  __$$_ReadyCopyWithImpl(_$_Ready _value, $Res Function(_$_Ready) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready();

  @override
  String toString() {
    return 'AudioPlayerStatus.ready()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Ready);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements AudioPlayerStatus {
  const factory _Ready() = _$_Ready;
}

/// @nodoc
abstract class _$$_PlayingCopyWith<$Res> {
  factory _$$_PlayingCopyWith(
          _$_Playing value, $Res Function(_$_Playing) then) =
      __$$_PlayingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayingCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Playing>
    implements _$$_PlayingCopyWith<$Res> {
  __$$_PlayingCopyWithImpl(_$_Playing _value, $Res Function(_$_Playing) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Playing implements _Playing {
  const _$_Playing();

  @override
  String toString() {
    return 'AudioPlayerStatus.playing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Playing);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return playing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return playing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class _Playing implements AudioPlayerStatus {
  const factory _Playing() = _$_Playing;
}

/// @nodoc
abstract class _$$_CompletedCopyWith<$Res> {
  factory _$$_CompletedCopyWith(
          _$_Completed value, $Res Function(_$_Completed) then) =
      __$$_CompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CompletedCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Completed>
    implements _$$_CompletedCopyWith<$Res> {
  __$$_CompletedCopyWithImpl(
      _$_Completed _value, $Res Function(_$_Completed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed();

  @override
  String toString() {
    return 'AudioPlayerStatus.completed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Completed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements AudioPlayerStatus {
  const factory _Completed() = _$_Completed;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$AudioPlayerStatusCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'AudioPlayerStatus.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function() buffering,
    required TResult Function() ready,
    required TResult Function() playing,
    required TResult Function() completed,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function()? buffering,
    TResult? Function()? ready,
    TResult? Function()? playing,
    TResult? Function()? completed,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function()? buffering,
    TResult Function()? ready,
    TResult Function()? playing,
    TResult Function()? completed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Buffering value) buffering,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Playing value) playing,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Buffering value)? buffering,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Playing value)? playing,
    TResult? Function(_Completed value)? completed,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_Loading value)? loading,
    TResult Function(_Buffering value)? buffering,
    TResult Function(_Ready value)? ready,
    TResult Function(_Playing value)? playing,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AudioPlayerStatus {
  const factory _Failure() = _$_Failure;
}
