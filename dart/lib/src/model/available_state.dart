//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'available_state.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AvailableState {
  /// Returns a new [AvailableState] instance.
  AvailableState({
    required this.action,
    required this.target,
  });

  @JsonKey(name: r'action', required: true, includeIfNull: false)
  final String action;

  @JsonKey(name: r'target', required: true, includeIfNull: false)
  final String target;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AvailableState && other.action == action && other.target == target;

  @override
  int get hashCode => action.hashCode + target.hashCode;

  factory AvailableState.fromJson(Map<String, dynamic> json) => _$AvailableStateFromJson(json);

  Map<String, dynamic> toJson() => _$AvailableStateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
