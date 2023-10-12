//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModelCommentCreate {
  /// Returns a new [OrderModelCommentCreate] instance.
  OrderModelCommentCreate({
    required this.comment,
  });

  String comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OrderModelCommentCreate && other.comment == comment;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (comment.hashCode);

  @override
  String toString() => 'OrderModelCommentCreate[comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [OrderModelCommentCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelCommentCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderModelCommentCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderModelCommentCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderModelCommentCreate(
        comment: mapValueOfType<String>(json, r'comment')!,
      );
    }
    return null;
  }

  static List<OrderModelCommentCreate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderModelCommentCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderModelCommentCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderModelCommentCreate> mapFromJson(dynamic json) {
    final map = <String, OrderModelCommentCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderModelCommentCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderModelCommentCreate-objects as value to a dart map
  static Map<String, List<OrderModelCommentCreate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderModelCommentCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderModelCommentCreate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'comment',
  };
}
