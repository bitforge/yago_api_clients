//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActiveOrder {
  /// Returns a new [ActiveOrder] instance.
  ActiveOrder({
    required this.id,
    required this.state,
  });

  int id;

  OrderState state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActiveOrder &&
     other.id == id &&
     other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (state.hashCode);

  @override
  String toString() => 'ActiveOrder[id=$id, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [ActiveOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActiveOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActiveOrder[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActiveOrder[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActiveOrder(
        id: mapValueOfType<int>(json, r'id')!,
        state: OrderState.fromJson(json[r'state'])!,
      );
    }
    return null;
  }

  static List<ActiveOrder>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActiveOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActiveOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActiveOrder> mapFromJson(dynamic json) {
    final map = <String, ActiveOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActiveOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActiveOrder-objects as value to a dart map
  static Map<String, List<ActiveOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActiveOrder>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActiveOrder.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'state',
  };
}

