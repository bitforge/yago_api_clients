//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasswordReset {
  /// Returns a new [PasswordReset] instance.
  PasswordReset({
    @required this.email,
  });

  String email;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordReset &&
     other.email == email;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (email == null ? 0 : email.hashCode);

  @override
  String toString() => 'PasswordReset[email=$email]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = email;
    return json;
  }

  /// Returns a new [PasswordReset] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordReset fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PasswordReset(
        email: mapValueOfType<String>(json, r'email'),
      );
    }
    return null;
  }

  static List<PasswordReset> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PasswordReset.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PasswordReset>[];

  static Map<String, PasswordReset> mapFromJson(dynamic json) {
    final map = <String, PasswordReset>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PasswordReset.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PasswordReset-objects as value to a dart map
  static Map<String, List<PasswordReset>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PasswordReset>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PasswordReset.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

