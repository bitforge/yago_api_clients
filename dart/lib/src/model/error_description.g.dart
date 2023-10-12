// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDescription _$ErrorDescriptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ErrorDescription',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['title', 'status', 'errors'],
        );
        final val = ErrorDescription(
          title: $checkedConvert('title', (v) => v as String),
          status: $checkedConvert('status', (v) => v as int),
          errors: $checkedConvert(
              'errors',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$ErrorDescriptionToJson(ErrorDescription instance) =>
    <String, dynamic>{
      'title': instance.title,
      'status': instance.status,
      'errors': instance.errors,
    };
