//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderCreate {
  /// Returns a new [OrderCreate] instance.
  OrderCreate({
    required this.project,
  });

  @JsonKey(name: r'project', required: true, includeIfNull: false)
  final String project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCreate && other.project == project;

  @override
  int get hashCode => project.hashCode;

  factory OrderCreate.fromJson(Map<String, dynamic> json) => _$OrderCreateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
