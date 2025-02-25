//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class OrderComment {
  /// Returns a new [OrderComment] instance.
  OrderComment({
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
      other is OrderComment &&
          other.yagoTeam == yagoTeam &&
          other.userName == userName &&
          other.date == date &&
          other.comment == comment;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (yagoTeam.hashCode) + (userName.hashCode) + (date.hashCode) + (comment.hashCode);

  @override
  String toString() => 'OrderComment[yagoTeam=$yagoTeam, userName=$userName, date=$date, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'yago_team'] = this.yagoTeam;
    json[r'user_name'] = this.userName;
    json[r'date'] = this.date.toUtc().toIso8601String();
    json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [OrderComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderComment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OrderComment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OrderComment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OrderComment(
        yagoTeam: mapValueOfType<bool>(json, r'yago_team')!,
        userName: mapValueOfType<String>(json, r'user_name')!,
        date: mapDateTime(json, r'date', r'')!,
        comment: mapValueOfType<String>(json, r'comment')!,
      );
    }
    return null;
  }

  static List<OrderComment> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <OrderComment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrderComment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrderComment> mapFromJson(dynamic json) {
    final map = <String, OrderComment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrderComment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrderComment-objects as value to a dart map
  static Map<String, List<OrderComment>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<OrderComment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrderComment.listFromJson(
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
