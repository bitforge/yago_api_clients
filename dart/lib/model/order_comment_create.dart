//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrderCommentCreate {
  /// Returns a new [OrderCommentCreate] instance.
  OrderCommentCreate({
    @required this.comment,
  });

  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCommentCreate &&
     other.comment == comment;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (comment == null ? 0 : comment.hashCode);

  @override
  String toString() => 'OrderCommentCreate[comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'comment'] = comment;
    return json;
  }

  /// Returns a new [OrderCommentCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrderCommentCreate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return OrderCommentCreate(
        comment: mapValueOfType<String>(json, r'comment'),
      );
    }
    return null;
  }

  static List<OrderCommentCreate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(OrderCommentCreate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <OrderCommentCreate>[];

  static Map<String, OrderCommentCreate> mapFromJson(dynamic json) {
    final map = <String, OrderCommentCreate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = OrderCommentCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrderCommentCreate-objects as value to a dart map
  static Map<String, List<OrderCommentCreate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrderCommentCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = OrderCommentCreate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

