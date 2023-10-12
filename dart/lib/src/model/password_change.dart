//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'password_change.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PasswordChange {
  /// Returns a new [PasswordChange] instance.
  PasswordChange({
    required this.oldPassword,
    required this.newPassword1,
    required this.newPassword2,
  });

  @JsonKey(name: r'old_password', required: true, includeIfNull: false)
  final String oldPassword;

  @JsonKey(name: r'new_password1', required: true, includeIfNull: false)
  final String newPassword1;

  @JsonKey(name: r'new_password2', required: true, includeIfNull: false)
  final String newPassword2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordChange &&
          other.oldPassword == oldPassword &&
          other.newPassword1 == newPassword1 &&
          other.newPassword2 == newPassword2;

  @override
  int get hashCode => oldPassword.hashCode + newPassword1.hashCode + newPassword2.hashCode;

  factory PasswordChange.fromJson(Map<String, dynamic> json) => _$PasswordChangeFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordChangeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
