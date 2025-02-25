//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class StateChanged {
  /// Returns a new [StateChanged] instance.
  StateChanged({
    required this.oldState,
    required this.newState,
    required this.modified,
  });

  String oldState;

  String newState;

  DateTime modified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StateChanged && other.oldState == oldState && other.newState == newState && other.modified == modified;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (oldState.hashCode) + (newState.hashCode) + (modified.hashCode);

  @override
  String toString() => 'StateChanged[oldState=$oldState, newState=$newState, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'old_state'] = this.oldState;
    json[r'new_state'] = this.newState;
    json[r'modified'] = this.modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StateChanged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StateChanged? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StateChanged[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StateChanged[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StateChanged(
        oldState: mapValueOfType<String>(json, r'old_state')!,
        newState: mapValueOfType<String>(json, r'new_state')!,
        modified: mapDateTime(json, r'modified', r'')!,
      );
    }
    return null;
  }

  static List<StateChanged> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <StateChanged>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StateChanged.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StateChanged> mapFromJson(dynamic json) {
    final map = <String, StateChanged>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StateChanged.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StateChanged-objects as value to a dart map
  static Map<String, List<StateChanged>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<StateChanged>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StateChanged.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'old_state',
    'new_state',
    'modified',
  };
}
