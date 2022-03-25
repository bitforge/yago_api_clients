//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasswordChange {
  /// Returns a new [PasswordChange] instance.
  PasswordChange({
    @required this.oldPassword,
    @required this.newPassword1,
    @required this.newPassword2,
  });

  String oldPassword;

  String newPassword1;

  String newPassword2;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordChange &&
     other.oldPassword == oldPassword &&
     other.newPassword1 == newPassword1 &&
     other.newPassword2 == newPassword2;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (oldPassword == null ? 0 : oldPassword.hashCode) +
    (newPassword1 == null ? 0 : newPassword1.hashCode) +
    (newPassword2 == null ? 0 : newPassword2.hashCode);

  @override
  String toString() => 'PasswordChange[oldPassword=$oldPassword, newPassword1=$newPassword1, newPassword2=$newPassword2]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'old_password'] = oldPassword;
      json[r'new_password1'] = newPassword1;
      json[r'new_password2'] = newPassword2;
    return json;
  }

  /// Returns a new [PasswordChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordChange fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PasswordChange(
        oldPassword: mapValueOfType<String>(json, r'old_password'),
        newPassword1: mapValueOfType<String>(json, r'new_password1'),
        newPassword2: mapValueOfType<String>(json, r'new_password2'),
      );
    }
    return null;
  }

  static List<PasswordChange> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PasswordChange.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PasswordChange>[];

  static Map<String, PasswordChange> mapFromJson(dynamic json) {
    final map = <String, PasswordChange>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PasswordChange.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PasswordChange-objects as value to a dart map
  static Map<String, List<PasswordChange>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PasswordChange>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PasswordChange.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

