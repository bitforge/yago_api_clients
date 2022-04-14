//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectStatistics {
  /// Returns a new [ProjectStatistics] instance.
  ProjectStatistics({
    @required this.timeRange,
    @required this.filterEvents,
    @required this.groupBy,
  });

  TimeRangeEnum timeRange;

  FilterEventsEnum filterEvents;

  ProjectStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectStatistics &&
     other.timeRange == timeRange &&
     other.filterEvents == filterEvents &&
     other.groupBy == groupBy;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (timeRange == null ? 0 : timeRange.hashCode) +
    (filterEvents == null ? 0 : filterEvents.hashCode) +
    (groupBy == null ? 0 : groupBy.hashCode);

  @override
  String toString() => 'ProjectStatistics[timeRange=$timeRange, filterEvents=$filterEvents, groupBy=$groupBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'time_range'] = timeRange;
      json[r'filter_events'] = filterEvents;
      json[r'group_by'] = groupBy;
    return json;
  }

  /// Returns a new [ProjectStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectStatistics fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ProjectStatistics(
        timeRange: TimeRangeEnum.fromJson(json[r'time_range']),
        filterEvents: FilterEventsEnum.fromJson(json[r'filter_events']),
        groupBy: ProjectStatisticsGroupByEnum.fromJson(json[r'group_by']),
      );
    }
    return null;
  }

  static List<ProjectStatistics> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ProjectStatistics.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ProjectStatistics>[];

  static Map<String, ProjectStatistics> mapFromJson(dynamic json) {
    final map = <String, ProjectStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ProjectStatistics.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectStatistics-objects as value to a dart map
  static Map<String, List<ProjectStatistics>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProjectStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ProjectStatistics.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

