//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'model_info.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ModelInfo {
  /// Returns a new [ModelInfo] instance.
  ModelInfo({
    required this.siteUrl,
    required this.quicklookLink,
    required this.qrConfig,
  });

  @JsonKey(name: r'site_url', required: true, includeIfNull: false)
  final String siteUrl;

  @JsonKey(name: r'quicklook_link', required: true, includeIfNull: false)
  final String quicklookLink;

  @JsonKey(name: r'qr_config', required: true, includeIfNull: false)
  final Map<String, Object> qrConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelInfo &&
          other.siteUrl == siteUrl &&
          other.quicklookLink == quicklookLink &&
          other.qrConfig == qrConfig;

  @override
  int get hashCode => siteUrl.hashCode + quicklookLink.hashCode + qrConfig.hashCode;

  factory ModelInfo.fromJson(Map<String, dynamic> json) => _$ModelInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ModelInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
