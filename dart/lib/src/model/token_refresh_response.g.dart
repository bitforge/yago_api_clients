// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_refresh_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenRefreshResponse _$TokenRefreshResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenRefreshResponse',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['access', 'refresh'],
        );
        final val = TokenRefreshResponse(
          access: $checkedConvert('access', (v) => v as String),
          refresh: $checkedConvert('refresh', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenRefreshResponseToJson(
        TokenRefreshResponse instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };
