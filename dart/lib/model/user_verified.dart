//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class UserVerified {
  /// Returns a new [UserVerified] instance.
  UserVerified({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.dateJoined,
    required this.access,
    required this.refresh,
  });

  String id;

  String email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dateJoined;

  String access;

  String refresh;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserVerified &&
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
      (id.hashCode) +
      (email.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (dateJoined == null ? 0 : dateJoined!.hashCode) +
      (access.hashCode) +
      (refresh.hashCode);

  @override
  String toString() =>
      'UserVerified[id=$id, email=$email, firstName=$firstName, lastName=$lastName, dateJoined=$dateJoined, access=$access, refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'email'] = this.email;
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    if (this.dateJoined != null) {
      json[r'date_joined'] = this.dateJoined!.toUtc().toIso8601String();
    } else {
      json[r'date_joined'] = null;
    }
    json[r'access'] = this.access;
    json[r'refresh'] = this.refresh;
    return json;
  }

  /// Returns a new [UserVerified] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserVerified? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserVerified[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserVerified[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserVerified(
        id: mapValueOfType<String>(json, r'id')!,
        email: mapValueOfType<String>(json, r'email')!,
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        dateJoined: mapDateTime(json, r'date_joined', r''),
        access: mapValueOfType<String>(json, r'access')!,
        refresh: mapValueOfType<String>(json, r'refresh')!,
      );
    }
    return null;
  }

  static List<UserVerified> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <UserVerified>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserVerified.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserVerified> mapFromJson(dynamic json) {
    final map = <String, UserVerified>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserVerified.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserVerified-objects as value to a dart map
  static Map<String, List<UserVerified>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<UserVerified>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserVerified.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'email',
    'access',
    'refresh',
  };
}
