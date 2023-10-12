//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'registration_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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
  @JsonKey(name: r'customer', required: false, includeIfNull: false)
  final String? customer;

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @JsonKey(name: r'first_name', required: false, includeIfNull: false)
  final String? firstName;

  @JsonKey(name: r'last_name', required: false, includeIfNull: false)
  final String? lastName;

  @JsonKey(name: r'password', required: true, includeIfNull: false)
  final String password;

  @JsonKey(name: r'redirect_url', required: true, includeIfNull: false)
  final String redirectUrl;

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
      (customer == null ? 0 : customer.hashCode) +
      email.hashCode +
      firstName.hashCode +
      lastName.hashCode +
      password.hashCode +
      redirectUrl.hashCode;

  factory RegistrationCreate.fromJson(Map<String, dynamic> json) => _$RegistrationCreateFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
