// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_id_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GoogleIdToken _$GoogleIdTokenFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GoogleIdToken',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['token'],
        );
        final val = GoogleIdToken(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$GoogleIdTokenToJson(GoogleIdToken instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
