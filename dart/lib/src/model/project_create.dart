//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'project_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectCreate {
  /// Returns a new [ProjectCreate] instance.
  ProjectCreate({
    required this.name,
  });

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCreate && other.name == name;

  @override
  int get hashCode => name.hashCode;

  factory ProjectCreate.fromJson(Map<String, dynamic> json) => _$ProjectCreateFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
