//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

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
    (labels == null ? 0 : labels.hashCode) +
    (datasets == null ? 0 : datasets.hashCode);

  @override
  String toString() => 'SummaryStats[labels=$labels, datasets=$datasets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = labels;
      json[r'datasets'] = datasets;
    return json;
  }

  /// Returns a new [SummaryStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SummaryStats fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return SummaryStats(
        labels: Object.listFromJson(json[r'labels']),
        datasets: mapValueOfType<Map<String, Object>>(json, r'datasets'),
      );
    }
    return null;
  }

  static List<SummaryStats> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(SummaryStats.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <SummaryStats>[];

  static Map<String, SummaryStats> mapFromJson(dynamic json) {
    final map = <String, SummaryStats>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = SummaryStats.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SummaryStats-objects as value to a dart map
  static Map<String, List<SummaryStats>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SummaryStats>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = SummaryStats.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

