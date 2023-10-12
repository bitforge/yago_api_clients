// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SummaryStats _$SummaryStatsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SummaryStats',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['labels', 'datasets'],
        );
        final val = SummaryStats(
          labels: $checkedConvert('labels',
              (v) => (v as List<dynamic>).map((e) => e as Object).toList()),
          datasets: $checkedConvert(
              'datasets',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$SummaryStatsToJson(SummaryStats instance) =>
    <String, dynamic>{
      'labels': instance.labels,
      'datasets': instance.datasets,
    };
