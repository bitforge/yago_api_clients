//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'password_reset_confirm.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PasswordResetConfirm {
  /// Returns a new [PasswordResetConfirm] instance.
  PasswordResetConfirm({
    required this.newPassword1,
    required this.newPassword2,
    required this.uid,
    required this.token,
  });

  @JsonKey(name: r'new_password1', required: true, includeIfNull: false)
  final String newPassword1;

  @JsonKey(name: r'new_password2', required: true, includeIfNull: false)
  final String newPassword2;

  @JsonKey(name: r'uid', required: true, includeIfNull: false)
  final String uid;

  @JsonKey(name: r'token', required: true, includeIfNull: false)
  final String token;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordResetConfirm &&
          other.newPassword1 == newPassword1 &&
          other.newPassword2 == newPassword2 &&
          other.uid == uid &&
          other.token == token;

  @override
  int get hashCode => newPassword1.hashCode + newPassword2.hashCode + uid.hashCode + token.hashCode;

  factory PasswordResetConfirm.fromJson(Map<String, dynamic> json) => _$PasswordResetConfirmFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordResetConfirmToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
