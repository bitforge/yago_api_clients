//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'anchor_token.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AnchorToken {
  /// Returns a new [AnchorToken] instance.
  AnchorToken({
    required this.iss,
    required this.sub,
    required this.iat,
    required this.exp,
    required this.aud,
    required this.uid,
  });

  @JsonKey(name: r'iss', required: true, includeIfNull: false)
  final String iss;

  @JsonKey(name: r'sub', required: true, includeIfNull: false)
  final String sub;

  @JsonKey(name: r'iat', required: true, includeIfNull: false)
  final int iat;

  @JsonKey(name: r'exp', required: true, includeIfNull: false)
  final int exp;

  @JsonKey(name: r'aud', required: true, includeIfNull: false)
  final String aud;

  @JsonKey(name: r'uid', required: true, includeIfNull: false)
  final String uid;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnchorToken &&
          other.iss == iss &&
          other.sub == sub &&
          other.iat == iat &&
          other.exp == exp &&
          other.aud == aud &&
          other.uid == uid;

  @override
  int get hashCode => iss.hashCode + sub.hashCode + iat.hashCode + exp.hashCode + aud.hashCode + uid.hashCode;

  factory AnchorToken.fromJson(Map<String, dynamic> json) => _$AnchorTokenFromJson(json);

  Map<String, dynamic> toJson() => _$AnchorTokenToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
