//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Registration {
  /// Returns a new [Registration] instance.
  Registration({
    @required this.id,
    @required this.email,
    this.firstName,
    this.lastName,
  });

  String id;

  String email;

  String firstName;

  String lastName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Registration &&
     other.id == id &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode);

  @override
  String toString() => 'Registration[id=$id, email=$email, firstName=$firstName, lastName=$lastName]';

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
    return json;
  }

  /// Returns a new [Registration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Registration fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Registration(
        id: mapValueOfType<String>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
      );
    }
    return null;
  }

  static List<Registration> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Registration.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Registration>[];

  static Map<String, Registration> mapFromJson(dynamic json) {
    final map = <String, Registration>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Registration.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Registration-objects as value to a dart map
  static Map<String, List<Registration>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Registration>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Registration.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

