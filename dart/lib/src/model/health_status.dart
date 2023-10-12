//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'health_status.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HealthStatus {
  /// Returns a new [HealthStatus] instance.
  HealthStatus({
    required this.dbUp,
    required this.storageUp,
    required this.cacheUp,
  });

  @JsonKey(name: r'db_up', required: true, includeIfNull: false)
  final bool dbUp;

  @JsonKey(name: r'storage_up', required: true, includeIfNull: false)
  final bool storageUp;

  @JsonKey(name: r'cache_up', required: true, includeIfNull: false)
  final bool cacheUp;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthStatus && other.dbUp == dbUp && other.storageUp == storageUp && other.cacheUp == cacheUp;

  @override
  int get hashCode => dbUp.hashCode + storageUp.hashCode + cacheUp.hashCode;

  factory HealthStatus.fromJson(Map<String, dynamic> json) => _$HealthStatusFromJson(json);

  Map<String, dynamic> toJson() => _$HealthStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
