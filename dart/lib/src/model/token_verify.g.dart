// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_verify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenVerify _$TokenVerifyFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TokenVerify',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['token'],
        );
        final val = TokenVerify(
          token: $checkedConvert('token', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenVerifyToJson(TokenVerify instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
