//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelInfo {
  /// Returns a new [ModelInfo] instance.
  ModelInfo({
    @required this.siteUrl,
    @required this.quicklookLink,
    this.qrConfig = const {},
  });

  String siteUrl;

  String quicklookLink;

  Map<String, Object> qrConfig;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelInfo &&
     other.siteUrl == siteUrl &&
     other.quicklookLink == quicklookLink &&
     other.qrConfig == qrConfig;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (siteUrl == null ? 0 : siteUrl.hashCode) +
    (quicklookLink == null ? 0 : quicklookLink.hashCode) +
    (qrConfig == null ? 0 : qrConfig.hashCode);

  @override
  String toString() => 'ModelInfo[siteUrl=$siteUrl, quicklookLink=$quicklookLink, qrConfig=$qrConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'site_url'] = siteUrl;
      json[r'quicklook_link'] = quicklookLink;
      json[r'qr_config'] = qrConfig;
    return json;
  }

  /// Returns a new [ModelInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelInfo fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ModelInfo(
        siteUrl: mapValueOfType<String>(json, r'site_url'),
        quicklookLink: mapValueOfType<String>(json, r'quicklook_link'),
        qrConfig: mapValueOfType<Map<String, Object>>(json, r'qr_config'),
      );
    }
    return null;
  }

  static List<ModelInfo> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ModelInfo.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ModelInfo>[];

  static Map<String, ModelInfo> mapFromJson(dynamic json) {
    final map = <String, ModelInfo>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ModelInfo.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ModelInfo-objects as value to a dart map
  static Map<String, List<ModelInfo>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ModelInfo>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ModelInfo.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

