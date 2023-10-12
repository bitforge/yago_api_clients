//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenRefreshRequest {
  /// Returns a new [TokenRefreshRequest] instance.
  TokenRefreshRequest({
    required this.refresh,
  });

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefreshRequest && other.refresh == refresh;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (refresh.hashCode);

  @override
  String toString() => 'TokenRefreshRequest[refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'refresh'] = this.refresh;
    return json;
  }

  /// Returns a new [TokenRefreshRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRefreshRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenRefreshRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenRefreshRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenRefreshRequest(
        refresh: mapValueOfType<String>(json, r'refresh')!,
      );
    }
    return null;
  }

  static List<TokenRefreshRequest> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TokenRefreshRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenRefreshRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenRefreshRequest> mapFromJson(dynamic json) {
    final map = <String, TokenRefreshRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenRefreshRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenRefreshRequest-objects as value to a dart map
  static Map<String, List<TokenRefreshRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TokenRefreshRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenRefreshRequest.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'refresh',
  };
}
