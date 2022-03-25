//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StateChanged {
  /// Returns a new [StateChanged] instance.
  StateChanged({
    @required this.oldState,
    @required this.newState,
    @required this.modified,
  });

  String oldState;

  String newState;

  DateTime modified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StateChanged &&
     other.oldState == oldState &&
     other.newState == newState &&
     other.modified == modified;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (oldState == null ? 0 : oldState.hashCode) +
    (newState == null ? 0 : newState.hashCode) +
    (modified == null ? 0 : modified.hashCode);

  @override
  String toString() => 'StateChanged[oldState=$oldState, newState=$newState, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'old_state'] = oldState;
      json[r'new_state'] = newState;
      json[r'modified'] = modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [StateChanged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StateChanged fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return StateChanged(
        oldState: mapValueOfType<String>(json, r'old_state'),
        newState: mapValueOfType<String>(json, r'new_state'),
        modified: mapDateTime(json, r'modified', ''),
      );
    }
    return null;
  }

  static List<StateChanged> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(StateChanged.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <StateChanged>[];

  static Map<String, StateChanged> mapFromJson(dynamic json) {
    final map = <String, StateChanged>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = StateChanged.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StateChanged-objects as value to a dart map
  static Map<String, List<StateChanged>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StateChanged>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = StateChanged.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

