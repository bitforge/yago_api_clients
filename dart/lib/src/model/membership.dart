//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/role_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'membership.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Membership {
  /// Returns a new [Membership] instance.
  Membership({
    required this.id,
    required this.project,
    required this.user,
    this.role,
    required this.created,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'project', required: true, includeIfNull: false)
  final String project;

  @JsonKey(name: r'user', required: true, includeIfNull: false)
  final String user;

  @JsonKey(name: r'role', required: false, includeIfNull: false)
  final RoleEnum? role;

  @JsonKey(name: r'created', required: true, includeIfNull: false)
  final DateTime created;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Membership &&
          other.id == id &&
          other.project == project &&
          other.user == user &&
          other.role == role &&
          other.created == created;

  @override
  int get hashCode => id.hashCode + project.hashCode + user.hashCode + role.hashCode + created.hashCode;

  factory Membership.fromJson(Map<String, dynamic> json) => _$MembershipFromJson(json);

  Map<String, dynamic> toJson() => _$MembershipToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
