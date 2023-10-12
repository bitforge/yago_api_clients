//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelInfo {
  /// Returns a new [ModelInfo] instance.
  ModelInfo({
    required this.siteUrl,
    required this.quicklookLink,
    this.qrConfig = const {},
  });

  String siteUrl;

  String quicklookLink;

  Map<String, Object> qrConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelInfo &&
          other.siteUrl == siteUrl &&
          other.quicklookLink == quicklookLink &&
          _deepEquality.equals(other.qrConfig, qrConfig);

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (siteUrl.hashCode) + (quicklookLink.hashCode) + (qrConfig.hashCode);

  @override
  String toString() => 'ModelInfo[siteUrl=$siteUrl, quicklookLink=$quicklookLink, qrConfig=$qrConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'site_url'] = this.siteUrl;
    json[r'quicklook_link'] = this.quicklookLink;
    json[r'qr_config'] = this.qrConfig;
    return json;
  }

  /// Returns a new [ModelInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelInfo(
        siteUrl: mapValueOfType<String>(json, r'site_url')!,
        quicklookLink: mapValueOfType<String>(json, r'quicklook_link')!,
        qrConfig: mapCastOfType<String, Object>(json, r'qr_config')!,
      );
    }
    return null;
  }

  static List<ModelInfo> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <ModelInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelInfo> mapFromJson(dynamic json) {
    final map = <String, ModelInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelInfo-objects as value to a dart map
  static Map<String, List<ModelInfo>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<ModelInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelInfo.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'site_url',
    'quicklook_link',
    'qr_config',
  };
}
