// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HealthStatus _$HealthStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'HealthStatus',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['db_up', 'storage_up', 'cache_up'],
        );
        final val = HealthStatus(
          dbUp: $checkedConvert('db_up', (v) => v as bool),
          storageUp: $checkedConvert('storage_up', (v) => v as bool),
          cacheUp: $checkedConvert('cache_up', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'dbUp': 'db_up',
        'storageUp': 'storage_up',
        'cacheUp': 'cache_up'
      },
    );

Map<String, dynamic> _$HealthStatusToJson(HealthStatus instance) =>
    <String, dynamic>{
      'db_up': instance.dbUp,
      'storage_up': instance.storageUp,
      'cache_up': instance.cacheUp,
    };
