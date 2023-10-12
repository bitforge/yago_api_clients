//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderModelComment {
  /// Returns a new [OrderModelComment] instance.
  OrderModelComment({
    required this.yagoTeam,
    required this.userName,
    required this.date,
    required this.comment,
  });

  bool yagoTeam;

  String userName;

  DateTime date;

  String comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModelComment &&
          other.yagoTeam == yagoTeam &&
          other.userName == userName &&
          other.date == date &&
          other.comment == comment;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (yagoTeam.hashCode) + (userName.hashCode) + (date.hashCode) + (comment.hashCode);

  @override
  String toString() => 'OrderModelComment[yagoTeam=$yagoTeam, userName=$userName, date=$date, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'yago_team'] = this.yagoTeam;
    json[r'user_name'] = this.userName;
    json[r'date'] = this.date.toUtc().toIso8601String();
    json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [OrderModelComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderModelComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderModelComment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderModelComment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderModelComment(
        yagoTeam: mapValueOfType<bool>(json, r'yago_team')!,
        userName: mapValueOfType<String>(json, r'user_name')!,
        date: mapDateTime(json, r'date', r'')!,
        comment: mapValueOfType<String>(json, r'comment')!,
      );
    }
    return null;
  }

  static List<OrderModelComment> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderModelComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderModelComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderModelComment> mapFromJson(dynamic json) {
    final map = <String, OrderModelComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderModelComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderModelComment-objects as value to a dart map
  static Map<String, List<OrderModelComment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderModelComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderModelComment.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'yago_team',
    'user_name',
    'date',
    'comment',
  };
}
