//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HealthStatus {
  /// Returns a new [HealthStatus] instance.
  HealthStatus({
    @required this.dbUp,
    @required this.storageUp,
    @required this.cacheUp,
  });

  bool dbUp;

  bool storageUp;

  bool cacheUp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HealthStatus &&
     other.dbUp == dbUp &&
     other.storageUp == storageUp &&
     other.cacheUp == cacheUp;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (dbUp == null ? 0 : dbUp.hashCode) +
    (storageUp == null ? 0 : storageUp.hashCode) +
    (cacheUp == null ? 0 : cacheUp.hashCode);

  @override
  String toString() => 'HealthStatus[dbUp=$dbUp, storageUp=$storageUp, cacheUp=$cacheUp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'db_up'] = dbUp;
      json[r'storage_up'] = storageUp;
      json[r'cache_up'] = cacheUp;
    return json;
  }

  /// Returns a new [HealthStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HealthStatus fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return HealthStatus(
        dbUp: mapValueOfType<bool>(json, r'db_up'),
        storageUp: mapValueOfType<bool>(json, r'storage_up'),
        cacheUp: mapValueOfType<bool>(json, r'cache_up'),
      );
    }
    return null;
  }

  static List<HealthStatus> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(HealthStatus.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <HealthStatus>[];

  static Map<String, HealthStatus> mapFromJson(dynamic json) {
    final map = <String, HealthStatus>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = HealthStatus.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HealthStatus-objects as value to a dart map
  static Map<String, List<HealthStatus>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HealthStatus>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = HealthStatus.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

