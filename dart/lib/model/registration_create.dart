//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegistrationCreate {
  /// Returns a new [RegistrationCreate] instance.
  RegistrationCreate({
    this.customer,
    required this.email,
    this.firstName,
    this.lastName,
    required this.password,
    required this.redirectUrl,
  });

  /// Your company name or something like \"3D Guitar Store\".
  String? customer;

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

  String password;

  String redirectUrl;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RegistrationCreate &&
          other.customer == customer &&
          other.email == email &&
          other.firstName == firstName &&
          other.lastName == lastName &&
          other.password == password &&
          other.redirectUrl == redirectUrl;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (customer == null ? 0 : customer!.hashCode) +
      (email.hashCode) +
      (firstName == null ? 0 : firstName!.hashCode) +
      (lastName == null ? 0 : lastName!.hashCode) +
      (password.hashCode) +
      (redirectUrl.hashCode);

  @override
  String toString() =>
      'RegistrationCreate[customer=$customer, email=$email, firstName=$firstName, lastName=$lastName, password=$password, redirectUrl=$redirectUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customer != null) {
      json[r'customer'] = this.customer;
    } else {
      json[r'customer'] = null;
    }
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
    json[r'password'] = this.password;
    json[r'redirect_url'] = this.redirectUrl;
    return json;
  }

  /// Returns a new [RegistrationCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistrationCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegistrationCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegistrationCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegistrationCreate(
        customer: mapValueOfType<String>(json, r'customer'),
        email: mapValueOfType<String>(json, r'email')!,
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        password: mapValueOfType<String>(json, r'password')!,
        redirectUrl: mapValueOfType<String>(json, r'redirect_url')!,
      );
    }
    return null;
  }

  static List<RegistrationCreate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <RegistrationCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegistrationCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegistrationCreate> mapFromJson(dynamic json) {
    final map = <String, RegistrationCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegistrationCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegistrationCreate-objects as value to a dart map
  static Map<String, List<RegistrationCreate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<RegistrationCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegistrationCreate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'password',
    'redirect_url',
  };
}
