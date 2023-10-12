//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'error_description.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ErrorDescription {
  /// Returns a new [ErrorDescription] instance.
  ErrorDescription({
    required this.title,
    required this.status,
    required this.errors,
  });

  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  // minimum: 100
  // maximum: 599
  @JsonKey(name: r'status', required: true, includeIfNull: false)
  final int status;

  @JsonKey(name: r'errors', required: true, includeIfNull: false)
  final Map<String, Object> errors;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ErrorDescription && other.title == title && other.status == status && other.errors == errors;

  @override
  int get hashCode => title.hashCode + status.hashCode + errors.hashCode;

  factory ErrorDescription.fromJson(Map<String, dynamic> json) => _$ErrorDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorDescriptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
