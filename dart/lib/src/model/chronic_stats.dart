//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'chronic_stats.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChronicStats {
  /// Returns a new [ChronicStats] instance.
  ChronicStats({
    required this.label,
    required this.data,
    required this.total,
  });

  @JsonKey(name: r'label', required: true, includeIfNull: false)
  final String label;

  @JsonKey(name: r'data', required: true, includeIfNull: false)
  final Map<String, Object> data;

  @JsonKey(name: r'total', required: true, includeIfNull: false)
  final int total;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChronicStats && other.label == label && other.data == data && other.total == total;

  @override
  int get hashCode => label.hashCode + data.hashCode + total.hashCode;

  factory ChronicStats.fromJson(Map<String, dynamic> json) => _$ChronicStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ChronicStatsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
