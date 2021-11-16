//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenRefreshResponse {
  /// Returns a new [TokenRefreshResponse] instance.
  TokenRefreshResponse({
    @required this.access,
  });

  String access;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefreshResponse &&
     other.access == access;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (access == null ? 0 : access.hashCode);

  @override
  String toString() => 'TokenRefreshResponse[access=$access]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'access'] = access;
    return json;
  }

  /// Returns a new [TokenRefreshResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRefreshResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TokenRefreshResponse(
        access: mapValueOfType<String>(json, r'access'),
      );
    }
    return null;
  }

  static List<TokenRefreshResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TokenRefreshResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TokenRefreshResponse>[];

  static Map<String, TokenRefreshResponse> mapFromJson(dynamic json) {
    final map = <String, TokenRefreshResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TokenRefreshResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TokenRefreshResponse-objects as value to a dart map
  static Map<String, List<TokenRefreshResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenRefreshResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TokenRefreshResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

