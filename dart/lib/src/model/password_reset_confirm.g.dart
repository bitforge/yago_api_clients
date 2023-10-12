// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset_confirm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordResetConfirm _$PasswordResetConfirmFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PasswordResetConfirm',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'new_password1',
            'new_password2',
            'uid',
            'token'
          ],
        );
        final val = PasswordResetConfirm(
          newPassword1: $checkedConvert('new_password1', (v) => v as String),
          newPassword2: $checkedConvert('new_password2', (v) => v as String),
          uid: $checkedConvert('uid', (v) => v as String),
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'newPassword1': 'new_password1',
        'newPassword2': 'new_password2'
      },
    );

Map<String, dynamic> _$PasswordResetConfirmToJson(
        PasswordResetConfirm instance) =>
    <String, dynamic>{
      'new_password1': instance.newPassword1,
      'new_password2': instance.newPassword2,
      'uid': instance.uid,
      'token': instance.token,
    };
