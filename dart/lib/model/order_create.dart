//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCreate {
  /// Returns a new [OrderCreate] instance.
  OrderCreate({
    @required this.project,
  });

  String project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCreate &&
     other.project == project;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (project == null ? 0 : project.hashCode);

  @override
  String toString() => 'OrderCreate[project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'project'] = project;
    return json;
  }

  /// Returns a new [OrderCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCreate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderCreate(
        project: mapValueOfType<String>(json, r'project'),
      );
    }
    return null;
  }

  static List<OrderCreate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderCreate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderCreate>[];

  static Map<String, OrderCreate> mapFromJson(dynamic json) {
    final map = <String, OrderCreate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCreate-objects as value to a dart map
  static Map<String, List<OrderCreate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderCreate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

