//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'email', required: true, includeIfNull: false)
  final String email;

  @JsonKey(name: r'first_name', required: false, includeIfNull: false)
  final String? firstName;

  @JsonKey(name: r'last_name', required: false, includeIfNull: false)
  final String? lastName;

  @JsonKey(name: r'customer_name', required: true, includeIfNull: false)
  final String customerName;

  @JsonKey(name: r'date_joined', required: true, includeIfNull: false)
  final DateTime dateJoined;

  /// Deactivated users cannot login.
  @JsonKey(name: r'is_active', required: true, includeIfNull: false)
  final bool isActive;

  /// Allow login to Yago Admin. For Bitforge employees and power users.
  @JsonKey(name: r'is_staff', required: true, includeIfNull: false)
  final bool isStaff;

  /// User can see and change anything. Only for Bitforge employees.
  @JsonKey(name: r'is_superuser', required: true, includeIfNull: false)
  final bool isSuperuser;

  /// User can manage model orders. For designers & customer project managers.
  @JsonKey(name: r'is_contractor', required: true, includeIfNull: false)
  final bool isContractor;

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
      id.hashCode +
      email.hashCode +
      firstName.hashCode +
      lastName.hashCode +
      customerName.hashCode +
      dateJoined.hashCode +
      isActive.hashCode +
      isStaff.hashCode +
      isSuperuser.hashCode +
      isContractor.hashCode;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
