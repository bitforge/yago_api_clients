//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class GlobalStatistics {
  /// Returns a new [GlobalStatistics] instance.
  GlobalStatistics({
    required this.timeRange,
    required this.filterEvents,
    this.filterProject,
    required this.groupBy,
  });

  TimeRangeEnum timeRange;

  FilterEventsEnum filterEvents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filterProject;

  GlobalStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlobalStatistics &&
          other.timeRange == timeRange &&
          other.filterEvents == filterEvents &&
          other.filterProject == filterProject &&
          other.groupBy == groupBy;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (timeRange.hashCode) +
      (filterEvents.hashCode) +
      (filterProject == null ? 0 : filterProject!.hashCode) +
      (groupBy.hashCode);

  @override
  String toString() =>
      'GlobalStatistics[timeRange=$timeRange, filterEvents=$filterEvents, filterProject=$filterProject, groupBy=$groupBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'time_range'] = this.timeRange;
    json[r'filter_events'] = this.filterEvents;
    if (this.filterProject != null) {
      json[r'filter_project'] = this.filterProject;
    } else {
      json[r'filter_project'] = null;
    }
    json[r'group_by'] = this.groupBy;
    return json;
  }

  /// Returns a new [GlobalStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GlobalStatistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GlobalStatistics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GlobalStatistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GlobalStatistics(
        timeRange: TimeRangeEnum.fromJson(json[r'time_range'])!,
        filterEvents: FilterEventsEnum.fromJson(json[r'filter_events'])!,
        filterProject: mapValueOfType<String>(json, r'filter_project'),
        groupBy: GlobalStatisticsGroupByEnum.fromJson(json[r'group_by'])!,
      );
    }
    return null;
  }

  static List<GlobalStatistics> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <GlobalStatistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GlobalStatistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GlobalStatistics> mapFromJson(dynamic json) {
    final map = <String, GlobalStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GlobalStatistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GlobalStatistics-objects as value to a dart map
  static Map<String, List<GlobalStatistics>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<GlobalStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GlobalStatistics.listFromJson(
          entry.value,
          growable: growable,
        );
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
