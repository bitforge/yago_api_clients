//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user_verified.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @JsonKey(name: r'first_name', required: false, includeIfNull: false)
  final String? firstName;

  @JsonKey(name: r'last_name', required: false, includeIfNull: false)
  final String? lastName;

  @JsonKey(name: r'date_joined', required: false, includeIfNull: false)
  final DateTime? dateJoined;

  @JsonKey(name: r'access', required: true, includeIfNull: false)
  final String access;

  @JsonKey(name: r'refresh', required: true, includeIfNull: false)
  final String refresh;

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
      id.hashCode +
      email.hashCode +
      firstName.hashCode +
      lastName.hashCode +
      dateJoined.hashCode +
      access.hashCode +
      refresh.hashCode;

  factory UserVerified.fromJson(Map<String, dynamic> json) => _$UserVerifiedFromJson(json);

  Map<String, dynamic> toJson() => _$UserVerifiedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
