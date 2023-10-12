// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectStatistics _$ProjectStatisticsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProjectStatistics',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['time_range', 'filter_events', 'group_by'],
        );
        final val = ProjectStatistics(
          timeRange: $checkedConvert(
              'time_range', (v) => $enumDecode(_$TimeRangeEnumEnumMap, v)),
          filterEvents: $checkedConvert('filter_events',
              (v) => $enumDecode(_$FilterEventsEnumEnumMap, v)),
          groupBy: $checkedConvert('group_by',
              (v) => $enumDecode(_$ProjectStatisticsGroupByEnumEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {
        'timeRange': 'time_range',
        'filterEvents': 'filter_events',
        'groupBy': 'group_by'
      },
    );

Map<String, dynamic> _$ProjectStatisticsToJson(ProjectStatistics instance) =>
    <String, dynamic>{
      'time_range': _$TimeRangeEnumEnumMap[instance.timeRange]!,
      'filter_events': _$FilterEventsEnumEnumMap[instance.filterEvents]!,
      'group_by': _$ProjectStatisticsGroupByEnumEnumMap[instance.groupBy]!,
    };

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

const _$ProjectStatisticsGroupByEnumEnumMap = {
  ProjectStatisticsGroupByEnum.all: 'all',
  ProjectStatisticsGroupByEnum.events: 'events',
  ProjectStatisticsGroupByEnum.models: 'models',
  ProjectStatisticsGroupByEnum.platforms: 'platforms',
  ProjectStatisticsGroupByEnum.languages: 'languages',
  ProjectStatisticsGroupByEnum.devices: 'devices',
  ProjectStatisticsGroupByEnum.browsers: 'browsers',
  ProjectStatisticsGroupByEnum.countries: 'countries',
};
