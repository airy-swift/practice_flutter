// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toilet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToiletsImpl _$$ToiletsImplFromJson(Map<String, dynamic> json) => _$ToiletsImpl(
      toiletData: (json['data'] as List<dynamic>).map((e) => Toilet.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$ToiletsImplToJson(_$ToiletsImpl instance) => <String, dynamic>{
      'data': instance.toiletData,
    };

_$ToiletImpl _$$ToiletImplFromJson(Map<String, dynamic> json) => _$ToiletImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      kind: json['kind'] as int,
    );

Map<String, dynamic> _$$ToiletImplToJson(_$ToiletImpl instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'kind': instance.kind,
    };
