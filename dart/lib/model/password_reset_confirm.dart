//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PasswordResetConfirm {
  /// Returns a new [PasswordResetConfirm] instance.
  PasswordResetConfirm({
    @required this.newPassword1,
    @required this.newPassword2,
    @required this.uid,
    @required this.token,
  });

  String newPassword1;

  String newPassword2;

  String uid;

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PasswordResetConfirm &&
     other.newPassword1 == newPassword1 &&
     other.newPassword2 == newPassword2 &&
     other.uid == uid &&
     other.token == token;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (newPassword1 == null ? 0 : newPassword1.hashCode) +
    (newPassword2 == null ? 0 : newPassword2.hashCode) +
    (uid == null ? 0 : uid.hashCode) +
    (token == null ? 0 : token.hashCode);

  @override
  String toString() => 'PasswordResetConfirm[newPassword1=$newPassword1, newPassword2=$newPassword2, uid=$uid, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'new_password1'] = newPassword1;
      json[r'new_password2'] = newPassword2;
      json[r'uid'] = uid;
      json[r'token'] = token;
    return json;
  }

  /// Returns a new [PasswordResetConfirm] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordResetConfirm fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PasswordResetConfirm(
        newPassword1: mapValueOfType<String>(json, r'new_password1'),
        newPassword2: mapValueOfType<String>(json, r'new_password2'),
        uid: mapValueOfType<String>(json, r'uid'),
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<PasswordResetConfirm> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PasswordResetConfirm.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PasswordResetConfirm>[];

  static Map<String, PasswordResetConfirm> mapFromJson(dynamic json) {
    final map = <String, PasswordResetConfirm>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PasswordResetConfirm.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PasswordResetConfirm-objects as value to a dart map
  static Map<String, List<PasswordResetConfirm>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PasswordResetConfirm>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PasswordResetConfirm.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

