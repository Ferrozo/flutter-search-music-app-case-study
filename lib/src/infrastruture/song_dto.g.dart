// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'song_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SongDTO _$$_SongDTOFromJson(Map<String, dynamic> json) => _$_SongDTO(
      artistName: json['artistName'] as String?,
      collectionName: json['collectionName'] as String?,
      trackName: json['trackName'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
      previewUrl: json['previewUrl'] as String,
    );

Map<String, dynamic> _$$_SongDTOToJson(_$_SongDTO instance) =>
    <String, dynamic>{
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'trackName': instance.trackName,
      'artworkUrl100': instance.artworkUrl100,
      'previewUrl': instance.previewUrl,
    };
