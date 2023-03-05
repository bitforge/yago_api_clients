//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenObtainRequest {
  /// Returns a new [TokenObtainRequest] instance.
  TokenObtainRequest({
    required this.email,
    required this.password,
  });

  String email;

  String password;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is TokenObtainRequest && other.email == email && other.password == password;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (email.hashCode) + (password.hashCode);

  @override
  String toString() => 'TokenObtainRequest[email=$email, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'email'] = this.email;
    json[r'password'] = this.password;
    return json;
  }

  /// Returns a new [TokenObtainRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenObtainRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenObtainRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenObtainRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenObtainRequest(
        email: mapValueOfType<String>(json, r'email')!,
        password: mapValueOfType<String>(json, r'password')!,
      );
    }
    return null;
  }

  static List<TokenObtainRequest>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <TokenObtainRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenObtainRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenObtainRequest> mapFromJson(dynamic json) {
    final map = <String, TokenObtainRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenObtainRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenObtainRequest-objects as value to a dart map
  static Map<String, List<TokenObtainRequest>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<TokenObtainRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenObtainRequest.listFromJson(
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
    'email',
    'password',
  };
}
