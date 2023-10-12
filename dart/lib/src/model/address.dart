//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/country_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Address {
  /// Returns a new [Address] instance.
  Address({
    required this.id,
    required this.name,
    this.email,
    this.phone,
    this.line1,
    this.line2,
    this.postalCode,
    this.city,
    this.state,
    this.country,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Full person name.
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  /// CH or international format (e.g 079 123 45 67 / +41791234567)
  @JsonKey(name: r'phone', required: false, includeIfNull: false)
  final String? phone;

  /// Address line 1 (e.g., street, PO Box, or company name).
  @JsonKey(name: r'line1', required: false, includeIfNull: false)
  final String? line1;

  /// Address line 2 (e.g., apartment, suite, unit, or building).
  @JsonKey(name: r'line2', required: false, includeIfNull: false)
  final String? line2;

  /// Postal code.
  @JsonKey(name: r'postal_code', required: false, includeIfNull: false)
  final String? postalCode;

  /// City, district, suburb, town, or village.
  @JsonKey(name: r'city', required: false, includeIfNull: false)
  final String? city;

  /// State, county, province, or region.
  @JsonKey(name: r'state', required: false, includeIfNull: false)
  final String? state;

  @JsonKey(name: r'country', required: false, includeIfNull: false)
  final CountryEnum? country;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Address &&
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
      id.hashCode +
      name.hashCode +
      (email == null ? 0 : email.hashCode) +
      (phone == null ? 0 : phone.hashCode) +
      (line1 == null ? 0 : line1.hashCode) +
      (line2 == null ? 0 : line2.hashCode) +
      (postalCode == null ? 0 : postalCode.hashCode) +
      (city == null ? 0 : city.hashCode) +
      (state == null ? 0 : state.hashCode) +
      country.hashCode;

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
