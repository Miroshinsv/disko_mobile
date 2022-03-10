import 'package:json_annotation/json_annotation.dart';

part 'XTokenEntity.g.dart';

@JsonSerializable()
class XTokenEntity {
  final String auth;
  final String refresh;

  XTokenEntity({
    required this.auth,
    required this.refresh,
  });

  @override
  String toString() {
    return 'XTokenEntity{auth: $auth, refresh: $refresh}';
  }

  factory XTokenEntity.fromJson(Map<String, dynamic> json) =>
      _$XTokenEntityFromJson(json);

  Map<String, dynamic> toJson() => _$XTokenEntityToJson(this);
}
