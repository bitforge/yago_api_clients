// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalStatistics _$GlobalStatisticsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GlobalStatistics',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['time_range', 'filter_events', 'group_by'],
        );
        final val = GlobalStatistics(
          timeRange: $checkedConvert(
              'time_range', (v) => $enumDecode(_$TimeRangeEnumEnumMap, v)),
          filterEvents: $checkedConvert('filter_events',
              (v) => $enumDecode(_$FilterEventsEnumEnumMap, v)),
          filterProject: $checkedConvert('filter_project', (v) => v as String?),
          groupBy: $checkedConvert('group_by',
              (v) => $enumDecode(_$GlobalStatisticsGroupByEnumEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'timeRange': 'time_range',
        'filterEvents': 'filter_events',
        'filterProject': 'filter_project',
        'groupBy': 'group_by'
      },
    );

Map<String, dynamic> _$GlobalStatisticsToJson(GlobalStatistics instance) {
  final val = <String, dynamic>{
    'time_range': _$TimeRangeEnumEnumMap[instance.timeRange]!,
    'filter_events': _$FilterEventsEnumEnumMap[instance.filterEvents]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('filter_project', instance.filterProject);
  val['group_by'] = _$GlobalStatisticsGroupByEnumEnumMap[instance.groupBy]!;
  return val;
}

const _$TimeRangeEnumEnumMap = {
  TimeRangeEnum.n24h: '24h',
  TimeRangeEnum.n48h: '48h',
  TimeRangeEnum.n7d: '7d',
  TimeRangeEnum.n14d: '14d',
  TimeRangeEnum.n1m: '1m',
  TimeRangeEnum.n2m: '2m',
  TimeRangeEnum.n3m: '3m',
  TimeRangeEnum.n6m: '6m',
  TimeRangeEnum.n1y: '1y',
  TimeRangeEnum.n2y: '2y',
};

const _$FilterEventsEnumEnumMap = {
  FilterEventsEnum.all: 'all',
  FilterEventsEnum.ar: 'ar',
  FilterEventsEnum.model: 'model',
};

const _$GlobalStatisticsGroupByEnumEnumMap = {
  GlobalStatisticsGroupByEnum.all: 'all',
  GlobalStatisticsGroupByEnum.events: 'events',
  GlobalStatisticsGroupByEnum.models: 'models',
  GlobalStatisticsGroupByEnum.platforms: 'platforms',
  GlobalStatisticsGroupByEnum.languages: 'languages',
  GlobalStatisticsGroupByEnum.devices: 'devices',
  GlobalStatisticsGroupByEnum.browsers: 'browsers',
  GlobalStatisticsGroupByEnum.countries: 'countries',
  GlobalStatisticsGroupByEnum.projects: 'projects',
};
