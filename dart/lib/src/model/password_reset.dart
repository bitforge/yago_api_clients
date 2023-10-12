//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'password_reset.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PasswordReset {
  /// Returns a new [PasswordReset] instance.
  PasswordReset({
    required this.email,
  });

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordReset && other.email == email;

  @override
  int get hashCode => email.hashCode;

  factory PasswordReset.fromJson(Map<String, dynamic> json) => _$PasswordResetFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordResetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
