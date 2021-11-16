//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GlobalStatistics {
  /// Returns a new [GlobalStatistics] instance.
  GlobalStatistics({
    @required this.reportFormat,
    @required this.timeRange,
    @required this.filterEvents,
    this.filterProject,
    @required this.groupBy,
  });

  ReportFormatEnum reportFormat;

  TimeRangeEnum timeRange;

  FilterEventsEnum filterEvents;

  String filterProject;

  GlobalStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GlobalStatistics &&
     other.reportFormat == reportFormat &&
     other.timeRange == timeRange &&
     other.filterEvents == filterEvents &&
     other.filterProject == filterProject &&
     other.groupBy == groupBy;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (reportFormat == null ? 0 : reportFormat.hashCode) +
    (timeRange == null ? 0 : timeRange.hashCode) +
    (filterEvents == null ? 0 : filterEvents.hashCode) +
    (filterProject == null ? 0 : filterProject.hashCode) +
    (groupBy == null ? 0 : groupBy.hashCode);

  @override
  String toString() => 'GlobalStatistics[reportFormat=$reportFormat, timeRange=$timeRange, filterEvents=$filterEvents, filterProject=$filterProject, groupBy=$groupBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'report_format'] = reportFormat;
      json[r'time_range'] = timeRange;
      json[r'filter_events'] = filterEvents;
    if (filterProject != null) {
      json[r'filter_project'] = filterProject;
    }
      json[r'group_by'] = groupBy;
    return json;
  }

  /// Returns a new [GlobalStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GlobalStatistics fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return GlobalStatistics(
        reportFormat: ReportFormatEnum.fromJson(json[r'report_format']),
        timeRange: TimeRangeEnum.fromJson(json[r'time_range']),
        filterEvents: FilterEventsEnum.fromJson(json[r'filter_events']),
        filterProject: mapValueOfType<String>(json, r'filter_project'),
        groupBy: GlobalStatisticsGroupByEnum.fromJson(json[r'group_by']),
      );
    }
    return null;
  }

  static List<GlobalStatistics> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(GlobalStatistics.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <GlobalStatistics>[];

  static Map<String, GlobalStatistics> mapFromJson(dynamic json) {
    final map = <String, GlobalStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = GlobalStatistics.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GlobalStatistics-objects as value to a dart map
  static Map<String, List<GlobalStatistics>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GlobalStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = GlobalStatistics.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

