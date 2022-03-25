//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AvailableState {
  /// Returns a new [AvailableState] instance.
  AvailableState({
    @required this.action,
    @required this.target,
  });

  String action;

  String target;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AvailableState &&
     other.action == action &&
     other.target == target;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (action == null ? 0 : action.hashCode) +
    (target == null ? 0 : target.hashCode);

  @override
  String toString() => 'AvailableState[action=$action, target=$target]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = action;
      json[r'target'] = target;
    return json;
  }

  /// Returns a new [AvailableState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AvailableState fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return AvailableState(
        action: mapValueOfType<String>(json, r'action'),
        target: mapValueOfType<String>(json, r'target'),
      );
    }
    return null;
  }

  static List<AvailableState> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(AvailableState.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <AvailableState>[];

  static Map<String, AvailableState> mapFromJson(dynamic json) {
    final map = <String, AvailableState>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = AvailableState.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AvailableState-objects as value to a dart map
  static Map<String, List<AvailableState>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AvailableState>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = AvailableState.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

