//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/filter_events_enum.dart';
import 'package:yago_cloud/src/model/project_statistics_group_by_enum.dart';
import 'package:yago_cloud/src/model/time_range_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project_statistics.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProjectStatistics {
  /// Returns a new [ProjectStatistics] instance.
  ProjectStatistics({
    required this.timeRange,
    required this.filterEvents,
    required this.groupBy,
  });

  @JsonKey(name: r'time_range', required: true, includeIfNull: false)
  final TimeRangeEnum timeRange;

  @JsonKey(name: r'filter_events', required: true, includeIfNull: false)
  final FilterEventsEnum filterEvents;

  @JsonKey(name: r'group_by', required: true, includeIfNull: false)
  final ProjectStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjectStatistics &&
          other.timeRange == timeRange &&
          other.filterEvents == filterEvents &&
          other.groupBy == groupBy;

  @override
  int get hashCode => timeRange.hashCode + filterEvents.hashCode + groupBy.hashCode;

  factory ProjectStatistics.fromJson(Map<String, dynamic> json) => _$ProjectStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectStatisticsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
