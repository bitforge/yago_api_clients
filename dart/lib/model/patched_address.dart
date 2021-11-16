//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedAddress {
  /// Returns a new [PatchedAddress] instance.
  PatchedAddress({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.line1,
    this.line2,
    this.postalCode,
    this.city,
    this.state,
    this.country,
  });

  String id;

  /// Full person name.
  String name;

  String email;

  /// CH or international format (e.g 079 123 45 67 / +41791234567)
  String phone;

  /// Address line 1 (e.g., street, PO Box, or company name).
  String line1;

  /// Address line 2 (e.g., apartment, suite, unit, or building).
  String line2;

  /// Postal code.
  String postalCode;

  /// City, district, suburb, town, or village.
  String city;

  /// State, county, province, or region.
  String state;

  CountryEnum country;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedAddress &&
     other.id == id &&
     other.name == name &&
     other.email == email &&
     other.phone == phone &&
     other.line1 == line1 &&
     other.line2 == line2 &&
     other.postalCode == postalCode &&
     other.city == city &&
     other.state == state &&
     other.country == country;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (phone == null ? 0 : phone.hashCode) +
    (line1 == null ? 0 : line1.hashCode) +
    (line2 == null ? 0 : line2.hashCode) +
    (postalCode == null ? 0 : postalCode.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (state == null ? 0 : state.hashCode) +
    (country == null ? 0 : country.hashCode);

  @override
  String toString() => 'PatchedAddress[id=$id, name=$name, email=$email, phone=$phone, line1=$line1, line2=$line2, postalCode=$postalCode, city=$city, state=$state, country=$country]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (phone != null) {
      json[r'phone'] = phone;
    }
    if (line1 != null) {
      json[r'line1'] = line1;
    }
    if (line2 != null) {
      json[r'line2'] = line2;
    }
    if (postalCode != null) {
      json[r'postal_code'] = postalCode;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    return json;
  }

  /// Returns a new [PatchedAddress] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedAddress fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PatchedAddress(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        email: mapValueOfType<String>(json, r'email'),
        phone: mapValueOfType<String>(json, r'phone'),
        line1: mapValueOfType<String>(json, r'line1'),
        line2: mapValueOfType<String>(json, r'line2'),
        postalCode: mapValueOfType<String>(json, r'postal_code'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        country: CountryEnum.fromJson(json[r'country']),
      );
    }
    return null;
  }

  static List<PatchedAddress> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatchedAddress.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatchedAddress>[];

  static Map<String, PatchedAddress> mapFromJson(dynamic json) {
    final map = <String, PatchedAddress>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatchedAddress.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchedAddress-objects as value to a dart map
  static Map<String, List<PatchedAddress>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatchedAddress>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatchedAddress.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

