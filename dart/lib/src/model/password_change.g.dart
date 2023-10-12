// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PasswordChange',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'old_password',
            'new_password1',
            'new_password2'
          ],
        );
        final val = PasswordChange(
          oldPassword: $checkedConvert('old_password', (v) => v as String),
          newPassword1: $checkedConvert('new_password1', (v) => v as String),
          newPassword2: $checkedConvert('new_password2', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'oldPassword': 'old_password',
        'newPassword1': 'new_password1',
        'newPassword2': 'new_password2'
      },
    );

Map<String, dynamic> _$PasswordChangeToJson(PasswordChange instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password1': instance.newPassword1,
      'new_password2': instance.newPassword2,
    };
