//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectsStatistics {
  /// Returns a new [ProjectsStatistics] instance.
  ProjectsStatistics({
    @required this.reportFormat,
    @required this.timeRange,
    @required this.filterEvents,
    @required this.groupBy,
  });

  ReportFormatEnum reportFormat;

  TimeRangeEnum timeRange;

  FilterEventsEnum filterEvents;

  ProjectsStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsStatistics &&
     other.reportFormat == reportFormat &&
     other.timeRange == timeRange &&
     other.filterEvents == filterEvents &&
     other.groupBy == groupBy;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (reportFormat == null ? 0 : reportFormat.hashCode) +
    (timeRange == null ? 0 : timeRange.hashCode) +
    (filterEvents == null ? 0 : filterEvents.hashCode) +
    (groupBy == null ? 0 : groupBy.hashCode);

  @override
  String toString() => 'ProjectsStatistics[reportFormat=$reportFormat, timeRange=$timeRange, filterEvents=$filterEvents, groupBy=$groupBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'report_format'] = reportFormat;
      json[r'time_range'] = timeRange;
      json[r'filter_events'] = filterEvents;
      json[r'group_by'] = groupBy;
    return json;
  }

  /// Returns a new [ProjectsStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectsStatistics fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ProjectsStatistics(
        reportFormat: ReportFormatEnum.fromJson(json[r'report_format']),
        timeRange: TimeRangeEnum.fromJson(json[r'time_range']),
        filterEvents: FilterEventsEnum.fromJson(json[r'filter_events']),
        groupBy: ProjectsStatisticsGroupByEnum.fromJson(json[r'group_by']),
      );
    }
    return null;
  }

  static List<ProjectsStatistics> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProjectsStatistics.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProjectsStatistics>[];

  static Map<String, ProjectsStatistics> mapFromJson(dynamic json) {
    final map = <String, ProjectsStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ProjectsStatistics.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectsStatistics-objects as value to a dart map
  static Map<String, List<ProjectsStatistics>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProjectsStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ProjectsStatistics.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

