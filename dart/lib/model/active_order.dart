//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActiveOrder {
  /// Returns a new [ActiveOrder] instance.
  ActiveOrder({
    @required this.id,
    this.state,
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
    (id == null ? 0 : id.hashCode) +
    (state == null ? 0 : state.hashCode);

  @override
  String toString() => 'ActiveOrder[id=$id, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'state'] = state == null ? null : state;
    return json;
  }

  /// Returns a new [ActiveOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActiveOrder fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ActiveOrder(
        id: mapValueOfType<int>(json, r'id'),
        state: OrderState.fromJson(json[r'state']),
      );
    }
    return null;
  }

  static List<ActiveOrder> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ActiveOrder.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ActiveOrder>[];

  static Map<String, ActiveOrder> mapFromJson(dynamic json) {
    final map = <String, ActiveOrder>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ActiveOrder.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActiveOrder-objects as value to a dart map
  static Map<String, List<ActiveOrder>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ActiveOrder>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ActiveOrder.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

