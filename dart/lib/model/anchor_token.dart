//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnchorToken {
  /// Returns a new [AnchorToken] instance.
  AnchorToken({
    required this.iss,
    required this.sub,
    required this.iat,
    required this.exp,
    required this.aud,
    required this.uid,
  });

  String iss;

  String sub;

  int iat;

  int exp;

  String aud;

  String uid;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnchorToken &&
          other.iss == iss &&
          other.sub == sub &&
          other.iat == iat &&
          other.exp == exp &&
          other.aud == aud &&
          other.uid == uid;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (iss.hashCode) + (sub.hashCode) + (iat.hashCode) + (exp.hashCode) + (aud.hashCode) + (uid.hashCode);

  @override
  String toString() => 'AnchorToken[iss=$iss, sub=$sub, iat=$iat, exp=$exp, aud=$aud, uid=$uid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'iss'] = this.iss;
    json[r'sub'] = this.sub;
    json[r'iat'] = this.iat;
    json[r'exp'] = this.exp;
    json[r'aud'] = this.aud;
    json[r'uid'] = this.uid;
    return json;
  }

  /// Returns a new [AnchorToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnchorToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnchorToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnchorToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnchorToken(
        iss: mapValueOfType<String>(json, r'iss')!,
        sub: mapValueOfType<String>(json, r'sub')!,
        iat: mapValueOfType<int>(json, r'iat')!,
        exp: mapValueOfType<int>(json, r'exp')!,
        aud: mapValueOfType<String>(json, r'aud')!,
        uid: mapValueOfType<String>(json, r'uid')!,
      );
    }
    return null;
  }

  static List<AnchorToken>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <AnchorToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnchorToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnchorToken> mapFromJson(dynamic json) {
    final map = <String, AnchorToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnchorToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnchorToken-objects as value to a dart map
  static Map<String, List<AnchorToken>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<AnchorToken>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnchorToken.listFromJson(
          entry.value,
          growable: growable,
        );
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'iss',
    'sub',
    'iat',
    'exp',
    'aud',
    'uid',
  };
}
