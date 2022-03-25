//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderComment {
  /// Returns a new [OrderComment] instance.
  OrderComment({
    @required this.yagoTeam,
    @required this.userName,
    @required this.date,
    @required this.comment,
  });

  bool yagoTeam;

  String userName;

  DateTime date;

  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderComment &&
     other.yagoTeam == yagoTeam &&
     other.userName == userName &&
     other.date == date &&
     other.comment == comment;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (yagoTeam == null ? 0 : yagoTeam.hashCode) +
    (userName == null ? 0 : userName.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (comment == null ? 0 : comment.hashCode);

  @override
  String toString() => 'OrderComment[yagoTeam=$yagoTeam, userName=$userName, date=$date, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'yago_team'] = yagoTeam;
      json[r'user_name'] = userName;
      json[r'date'] = date.toUtc().toIso8601String();
      json[r'comment'] = comment;
    return json;
  }

  /// Returns a new [OrderComment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderComment fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderComment(
        yagoTeam: mapValueOfType<bool>(json, r'yago_team'),
        userName: mapValueOfType<String>(json, r'user_name'),
        date: mapDateTime(json, r'date', ''),
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<OrderComment> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderComment.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderComment>[];

  static Map<String, OrderComment> mapFromJson(dynamic json) {
    final map = <String, OrderComment>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderComment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderComment-objects as value to a dart map
  static Map<String, List<OrderComment>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderComment>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderComment.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

