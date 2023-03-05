//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SummaryStats {
  /// Returns a new [SummaryStats] instance.
  SummaryStats({
    this.labels = const [],
    this.datasets = const {},
  });

  List<Object> labels;

  Map<String, Object> datasets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SummaryStats &&
     other.labels == labels &&
     other.datasets == datasets;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (datasets.hashCode);

  @override
  String toString() => 'SummaryStats[labels=$labels, datasets=$datasets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
      json[r'datasets'] = this.datasets;
    return json;
  }

  /// Returns a new [SummaryStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SummaryStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SummaryStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SummaryStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SummaryStats(
        labels: Object.listFromJson(json[r'labels'])!,
        datasets: mapCastOfType<String, Object>(json, r'datasets')!,
      );
    }
    return null;
  }

  static List<SummaryStats>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SummaryStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SummaryStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SummaryStats> mapFromJson(dynamic json) {
    final map = <String, SummaryStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SummaryStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SummaryStats-objects as value to a dart map
  static Map<String, List<SummaryStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SummaryStats>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SummaryStats.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'labels',
    'datasets',
  };
}

