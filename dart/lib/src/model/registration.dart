//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'registration.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Registration {
  /// Returns a new [Registration] instance.
  Registration({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @JsonKey(name: r'first_name', required: false, includeIfNull: false)
  final String? firstName;

  @JsonKey(name: r'last_name', required: false, includeIfNull: false)
  final String? lastName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Registration &&
          other.id == id &&
          other.email == email &&
          other.firstName == firstName &&
          other.lastName == lastName;

  @override
  int get hashCode => id.hashCode + email.hashCode + firstName.hashCode + lastName.hashCode;

  factory Registration.fromJson(Map<String, dynamic> json) => _$RegistrationFromJson(json);

  Map<String, dynamic> toJson() => _$RegistrationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
