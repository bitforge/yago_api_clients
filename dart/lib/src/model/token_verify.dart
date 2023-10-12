//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'token_verify.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TokenVerify {
  /// Returns a new [TokenVerify] instance.
  TokenVerify({
    required this.token,
  });

  @JsonKey(name: r'token', required: true, includeIfNull: false)
  final String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenVerify && other.token == token;

  @override
  int get hashCode => token.hashCode;

  factory TokenVerify.fromJson(Map<String, dynamic> json) => _$TokenVerifyFromJson(json);

  Map<String, dynamic> toJson() => _$TokenVerifyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
