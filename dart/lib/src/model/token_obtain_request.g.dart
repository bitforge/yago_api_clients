// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_obtain_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenObtainRequest _$TokenObtainRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TokenObtainRequest',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['email', 'password'],
        );
        final val = TokenObtainRequest(
          email: $checkedConvert('email', (v) => v as String),
          password: $checkedConvert('password', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$TokenObtainRequestToJson(TokenObtainRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
