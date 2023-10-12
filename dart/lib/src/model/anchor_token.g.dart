// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anchor_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnchorToken _$AnchorTokenFromJson(Map<String, dynamic> json) => $checkedCreate(
      'AnchorToken',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['iss', 'sub', 'iat', 'exp', 'aud', 'uid'],
        );
        final val = AnchorToken(
          iss: $checkedConvert('iss', (v) => v as String),
          sub: $checkedConvert('sub', (v) => v as String),
          iat: $checkedConvert('iat', (v) => v as int),
          exp: $checkedConvert('exp', (v) => v as int),
          aud: $checkedConvert('aud', (v) => v as String),
          uid: $checkedConvert('uid', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AnchorTokenToJson(AnchorToken instance) =>
    <String, dynamic>{
      'iss': instance.iss,
      'sub': instance.sub,
      'iat': instance.iat,
      'exp': instance.exp,
      'aud': instance.aud,
      'uid': instance.uid,
    };
