//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegistrationCreate {
  /// Returns a new [RegistrationCreate] instance.
  RegistrationCreate({
    this.customer,
    @required this.email,
    this.firstName,
    this.lastName,
    @required this.password,
    @required this.redirectUrl,
  });

  /// Your company name or something like \"3D Guitar Store\".
  String customer;

  String email;

  String firstName;

  String lastName;

  String password;

  String redirectUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegistrationCreate &&
     other.customer == customer &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.password == password &&
     other.redirectUrl == redirectUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (customer == null ? 0 : customer.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (redirectUrl == null ? 0 : redirectUrl.hashCode);

  @override
  String toString() => 'RegistrationCreate[customer=$customer, email=$email, firstName=$firstName, lastName=$lastName, password=$password, redirectUrl=$redirectUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (customer != null) {
      json[r'customer'] = customer;
    }
      json[r'email'] = email;
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
      json[r'password'] = password;
      json[r'redirect_url'] = redirectUrl;
    return json;
  }

  /// Returns a new [RegistrationCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegistrationCreate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return RegistrationCreate(
        customer: mapValueOfType<String>(json, r'customer'),
        email: mapValueOfType<String>(json, r'email'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        password: mapValueOfType<String>(json, r'password'),
        redirectUrl: mapValueOfType<String>(json, r'redirect_url'),
      );
    }
    return null;
  }

  static List<RegistrationCreate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(RegistrationCreate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <RegistrationCreate>[];

  static Map<String, RegistrationCreate> mapFromJson(dynamic json) {
    final map = <String, RegistrationCreate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = RegistrationCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegistrationCreate-objects as value to a dart map
  static Map<String, List<RegistrationCreate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RegistrationCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = RegistrationCreate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

