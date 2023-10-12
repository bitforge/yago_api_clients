// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectCreate _$ProjectCreateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProjectCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = ProjectCreate(
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$ProjectCreateToJson(ProjectCreate instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
