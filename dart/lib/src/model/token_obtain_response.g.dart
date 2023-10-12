// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_obtain_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenObtainResponse _$TokenObtainResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenObtainResponse',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['access', 'refresh'],
        );
        final val = TokenObtainResponse(
          access: $checkedConvert('access', (v) => v as String),
          refresh: $checkedConvert('refresh', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenObtainResponseToJson(
        TokenObtainResponse instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };
