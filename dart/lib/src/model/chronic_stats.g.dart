// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chronic_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChronicStats _$ChronicStatsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ChronicStats',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['label', 'data', 'total'],
        );
        final val = ChronicStats(
          label: $checkedConvert('label', (v) => v as String),
          data: $checkedConvert(
              'data',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
          total: $checkedConvert('total', (v) => v as int),
        );
        return val;
      },
    );

Map<String, dynamic> _$ChronicStatsToJson(ChronicStats instance) =>
    <String, dynamic>{
      'label': instance.label,
      'data': instance.data,
      'total': instance.total,
    };
