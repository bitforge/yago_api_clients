// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_reset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordReset _$PasswordResetFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PasswordReset',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['email'],
        );
        final val = PasswordReset(
          email: $checkedConvert('email', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PasswordResetToJson(PasswordReset instance) =>
    <String, dynamic>{
      'email': instance.email,
    };
