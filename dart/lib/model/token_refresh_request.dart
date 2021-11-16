//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenRefreshRequest {
  /// Returns a new [TokenRefreshRequest] instance.
  TokenRefreshRequest({
    @required this.refresh,
  });

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenRefreshRequest &&
     other.refresh == refresh;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (refresh == null ? 0 : refresh.hashCode);

  @override
  String toString() => 'TokenRefreshRequest[refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'refresh'] = refresh;
    return json;
  }

  /// Returns a new [TokenRefreshRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenRefreshRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TokenRefreshRequest(
        refresh: mapValueOfType<String>(json, r'refresh'),
      );
    }
    return null;
  }

  static List<TokenRefreshRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TokenRefreshRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TokenRefreshRequest>[];

  static Map<String, TokenRefreshRequest> mapFromJson(dynamic json) {
    final map = <String, TokenRefreshRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TokenRefreshRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TokenRefreshRequest-objects as value to a dart map
  static Map<String, List<TokenRefreshRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenRefreshRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TokenRefreshRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

