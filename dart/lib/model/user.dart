//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class User {
  /// Returns a new [User] instance.
  User({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    required this.customerName,
    required this.dateJoined,
    required this.isActive,
    required this.isStaff,
    required this.isSuperuser,
    required this.isContractor,
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

  String customerName;

  DateTime dateJoined;

  /// Deactivated users cannot login.
  bool isActive;

  /// Allow login to Yago Admin. For Bitforge employees and power users.
  bool isStaff;

  /// User can see and change anything. Only for Bitforge employees.
  bool isSuperuser;

  /// User can manage model orders. For designers & customer project managers.
  bool isContractor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          other.id == id &&
          other.email == email &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.customerName == customerName &&
          other.dateJoined == dateJoined &&
          other.isActive == isActive &&
          other.isStaff == isStaff &&
          other.isSuperuser == isSuperuser &&
          other.isContractor == isContractor;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (email.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (customerName.hashCode) +
      (dateJoined.hashCode) +
      (isActive.hashCode) +
      (isStaff.hashCode) +
      (isSuperuser.hashCode) +
      (isContractor.hashCode);

  @override
  String toString() =>
      'User[id=$id, email=$email, firstName=$firstName, lastName=$lastName, customerName=$customerName, dateJoined=$dateJoined, isActive=$isActive, isStaff=$isStaff, isSuperuser=$isSuperuser, isContractor=$isContractor]';

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
    json[r'customer_name'] = this.customerName;
    json[r'date_joined'] = this.dateJoined.toUtc().toIso8601String();
    json[r'is_active'] = this.isActive;
    json[r'is_staff'] = this.isStaff;
    json[r'is_superuser'] = this.isSuperuser;
    json[r'is_contractor'] = this.isContractor;
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static User? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "User[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "User[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return User(
        id: mapValueOfType<String>(json, r'id')!,
        email: mapValueOfType<String>(json, r'email')!,
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        customerName: mapValueOfType<String>(json, r'customer_name')!,
        dateJoined: mapDateTime(json, r'date_joined', r'')!,
        isActive: mapValueOfType<bool>(json, r'is_active')!,
        isStaff: mapValueOfType<bool>(json, r'is_staff')!,
        isSuperuser: mapValueOfType<bool>(json, r'is_superuser')!,
        isContractor: mapValueOfType<bool>(json, r'is_contractor')!,
      );
    }
    return null;
  }

  static List<User> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <User>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = User.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, User> mapFromJson(dynamic json) {
    final map = <String, User>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = User.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<User>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = User.listFromJson(
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
    'customer_name',
    'date_joined',
    'is_active',
    'is_staff',
    'is_superuser',
    'is_contractor',
  };
}
