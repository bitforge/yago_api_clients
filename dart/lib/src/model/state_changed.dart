//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'state_changed.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StateChanged {
  /// Returns a new [StateChanged] instance.
  StateChanged({
    required this.oldState,
    required this.newState,
    required this.modified,
  });

  @JsonKey(name: r'old_state', required: true, includeIfNull: false)
  final String oldState;

  @JsonKey(name: r'new_state', required: true, includeIfNull: false)
  final String newState;

  @JsonKey(name: r'modified', required: true, includeIfNull: false)
  final DateTime modified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StateChanged && other.oldState == oldState && other.newState == newState && other.modified == modified;

  @override
  int get hashCode => oldState.hashCode + newState.hashCode + modified.hashCode;

  factory StateChanged.fromJson(Map<String, dynamic> json) => _$StateChangedFromJson(json);

  Map<String, dynamic> toJson() => _$StateChangedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
