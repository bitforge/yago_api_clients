//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserVerified {
  /// Returns a new [UserVerified] instance.
  UserVerified({
    @required this.id,
    @required this.email,
    this.firstName,
    this.lastName,
    this.dateJoined,
    @required this.access,
    @required this.refresh,
  });

  String id;

  String email;

  String firstName;

  String lastName;

  DateTime dateJoined;

  String access;

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserVerified &&
     other.id == id &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.dateJoined == dateJoined &&
     other.access == access &&
     other.refresh == refresh;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (dateJoined == null ? 0 : dateJoined.hashCode) +
    (access == null ? 0 : access.hashCode) +
    (refresh == null ? 0 : refresh.hashCode);

  @override
  String toString() => 'UserVerified[id=$id, email=$email, firstName=$firstName, lastName=$lastName, dateJoined=$dateJoined, access=$access, refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'email'] = email;
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (dateJoined != null) {
      json[r'date_joined'] = dateJoined.toUtc().toIso8601String();
    }
      json[r'access'] = access;
      json[r'refresh'] = refresh;
    return json;
  }

  /// Returns a new [UserVerified] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserVerified fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return UserVerified(
        id: mapValueOfType<String>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        dateJoined: mapDateTime(json, r'date_joined', ''),
        access: mapValueOfType<String>(json, r'access'),
        refresh: mapValueOfType<String>(json, r'refresh'),
      );
    }
    return null;
  }

  static List<UserVerified> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(UserVerified.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <UserVerified>[];

  static Map<String, UserVerified> mapFromJson(dynamic json) {
    final map = <String, UserVerified>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = UserVerified.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserVerified-objects as value to a dart map
  static Map<String, List<UserVerified>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserVerified>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = UserVerified.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

