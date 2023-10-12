//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'summary_stats.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SummaryStats {
  /// Returns a new [SummaryStats] instance.
  SummaryStats({
    required this.labels,
    required this.datasets,
  });

  @JsonKey(name: r'labels', required: true, includeIfNull: false)
  final List<Object> labels;

  @JsonKey(name: r'datasets', required: true, includeIfNull: false)
  final Map<String, Object> datasets;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is SummaryStats && other.labels == labels && other.datasets == datasets;

  @override
  int get hashCode => labels.hashCode + datasets.hashCode;

  factory SummaryStats.fromJson(Map<String, dynamic> json) => _$SummaryStatsFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryStatsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
