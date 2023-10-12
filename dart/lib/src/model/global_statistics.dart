//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/global_statistics_group_by_enum.dart';
import 'package:yago_cloud/src/model/filter_events_enum.dart';
import 'package:yago_cloud/src/model/time_range_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'global_statistics.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GlobalStatistics {
  /// Returns a new [GlobalStatistics] instance.
  GlobalStatistics({
    required this.timeRange,
    required this.filterEvents,
    this.filterProject,
    required this.groupBy,
  });

  @JsonKey(name: r'time_range', required: true, includeIfNull: false)
  final TimeRangeEnum timeRange;

  @JsonKey(name: r'filter_events', required: true, includeIfNull: false)
  final FilterEventsEnum filterEvents;

  @JsonKey(name: r'filter_project', required: false, includeIfNull: false)
  final String? filterProject;

  @JsonKey(name: r'group_by', required: true, includeIfNull: false)
  final GlobalStatisticsGroupByEnum groupBy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlobalStatistics &&
          other.timeRange == timeRange &&
          other.filterEvents == filterEvents &&
          other.filterProject == filterProject &&
          other.groupBy == groupBy;

  @override
  int get hashCode => timeRange.hashCode + filterEvents.hashCode + filterProject.hashCode + groupBy.hashCode;

  factory GlobalStatistics.fromJson(Map<String, dynamic> json) => _$GlobalStatisticsFromJson(json);

  Map<String, dynamic> toJson() => _$GlobalStatisticsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
