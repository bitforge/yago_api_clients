//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectStatistics {
  /// Returns a new [ProjectStatistics] instance.
  ProjectStatistics({
    required this.timeRange,
    required this.filterEvents,
    required this.groupBy,
  });

  TimeRangeEnum timeRange;

  FilterEventsEnum filterEvents;

  ProjectStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectStatistics &&
          other.timeRange == timeRange &&
          other.filterEvents == filterEvents &&
          other.groupBy == groupBy;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (timeRange.hashCode) + (filterEvents.hashCode) + (groupBy.hashCode);

  @override
  String toString() => 'ProjectStatistics[timeRange=$timeRange, filterEvents=$filterEvents, groupBy=$groupBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'time_range'] = this.timeRange;
    json[r'filter_events'] = this.filterEvents;
    json[r'group_by'] = this.groupBy;
    return json;
  }

  /// Returns a new [ProjectStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectStatistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectStatistics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectStatistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectStatistics(
        timeRange: TimeRangeEnum.fromJson(json[r'time_range'])!,
        filterEvents: FilterEventsEnum.fromJson(json[r'filter_events'])!,
        groupBy: ProjectStatisticsGroupByEnum.fromJson(json[r'group_by'])!,
      );
    }
    return null;
  }

  static List<ProjectStatistics>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ProjectStatistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectStatistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectStatistics> mapFromJson(dynamic json) {
    final map = <String, ProjectStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectStatistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectStatistics-objects as value to a dart map
  static Map<String, List<ProjectStatistics>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ProjectStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectStatistics.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'time_range',
    'filter_events',
    'group_by',
  };
}
