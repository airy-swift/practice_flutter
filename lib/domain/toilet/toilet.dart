import 'package:freezed_annotation/freezed_annotation.dart';

part 'toilet.freezed.dart';

part 'toilet.g.dart';

/// 参考
///
@freezed
class Toilets with _$Toilets {
  const factory Toilets({
    @JsonKey(name: 'data') required List<Toilet> toiletData,
  }) = _Toilets;

  factory Toilets.fromJson(Map<String, dynamic> json) => _$ToiletsFromJson(json);
}

/// 参考
///
@freezed
class Toilet with _$Toilet {
  const factory Toilet({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'kind') required int kind,
  }) = _Toilet;

  factory Toilet.fromJson(Map<String, dynamic> json) => _$ToiletFromJson(json);
}
