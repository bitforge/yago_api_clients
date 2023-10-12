//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'google_id_token.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GoogleIdToken {
  /// Returns a new [GoogleIdToken] instance.
  GoogleIdToken({
    required this.token,
  });

  @JsonKey(name: r'token', required: true, includeIfNull: false)
  final String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GoogleIdToken && other.token == token;

  @override
  int get hashCode => token.hashCode;

  factory GoogleIdToken.fromJson(Map<String, dynamic> json) => _$GoogleIdTokenFromJson(json);

  Map<String, dynamic> toJson() => _$GoogleIdTokenToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
