//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class User {
  /// Returns a new [User] instance.
  User({
    @required this.id,
    @required this.email,
    this.firstName,
    this.lastName,
    this.dateJoined,
    this.isActive,
    this.isStaff,
    this.isSuperuser,
  });

  String id;

  String email;

  String firstName;

  String lastName;

  DateTime dateJoined;

  /// Deactivated users cannot login.
  bool isActive;

  /// Allow login to Genie AR CMS. Can be disabled for API users.
  bool isStaff;

  /// User can see and change anything. Only for Bitforge employees.
  bool isSuperuser;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.dateJoined == dateJoined &&
     other.isActive == isActive &&
     other.isStaff == isStaff &&
     other.isSuperuser == isSuperuser;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (dateJoined == null ? 0 : dateJoined.hashCode) +
    (isActive == null ? 0 : isActive.hashCode) +
    (isStaff == null ? 0 : isStaff.hashCode) +
    (isSuperuser == null ? 0 : isSuperuser.hashCode);

  @override
  String toString() => 'User[id=$id, email=$email, firstName=$firstName, lastName=$lastName, dateJoined=$dateJoined, isActive=$isActive, isStaff=$isStaff, isSuperuser=$isSuperuser]';

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
    if (isActive != null) {
      json[r'is_active'] = isActive;
    }
    if (isStaff != null) {
      json[r'is_staff'] = isStaff;
    }
    if (isSuperuser != null) {
      json[r'is_superuser'] = isSuperuser;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return User(
        id: mapValueOfType<String>(json, r'id'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        dateJoined: mapDateTime(json, r'date_joined', ''),
        isActive: mapValueOfType<bool>(json, r'is_active'),
        isStaff: mapValueOfType<bool>(json, r'is_staff'),
        isSuperuser: mapValueOfType<bool>(json, r'is_superuser'),
      );
    }
    return null;
  }

  static List<User> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(User.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <User>[];

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = User.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

