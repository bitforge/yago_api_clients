//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class ChronicStats {
  /// Returns a new [ChronicStats] instance.
  ChronicStats({
    required this.label,
    required this.data,
    required this.total,
  });

  String label;

  Object? data;

  int total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChronicStats && other.label == label && other.data == data && other.total == total;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (label.hashCode) + (data == null ? 0 : data!.hashCode) + (total.hashCode);

  @override
  String toString() => 'ChronicStats[label=$label, data=$data, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'label'] = this.label;
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    json[r'total'] = this.total;
    return json;
  }

  /// Returns a new [ChronicStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChronicStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChronicStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChronicStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChronicStats(
        label: mapValueOfType<String>(json, r'label')!,
        data: mapValueOfType<Object>(json, r'data'),
        total: mapValueOfType<int>(json, r'total')!,
      );
    }
    return null;
  }

  static List<ChronicStats> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ChronicStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChronicStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChronicStats> mapFromJson(dynamic json) {
    final map = <String, ChronicStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChronicStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChronicStats-objects as value to a dart map
  static Map<String, List<ChronicStats>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ChronicStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChronicStats.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'label',
    'data',
    'total',
  };
}
