//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenObtainResponse {
  /// Returns a new [TokenObtainResponse] instance.
  TokenObtainResponse({
    @required this.access,
    @required this.refresh,
  });

  String access;

  String refresh;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenObtainResponse &&
     other.access == access &&
     other.refresh == refresh;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (access == null ? 0 : access.hashCode) +
    (refresh == null ? 0 : refresh.hashCode);

  @override
  String toString() => 'TokenObtainResponse[access=$access, refresh=$refresh]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'access'] = access;
      json[r'refresh'] = refresh;
    return json;
  }

  /// Returns a new [TokenObtainResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenObtainResponse fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TokenObtainResponse(
        access: mapValueOfType<String>(json, r'access'),
        refresh: mapValueOfType<String>(json, r'refresh'),
      );
    }
    return null;
  }

  static List<TokenObtainResponse> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TokenObtainResponse.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TokenObtainResponse>[];

  static Map<String, TokenObtainResponse> mapFromJson(dynamic json) {
    final map = <String, TokenObtainResponse>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TokenObtainResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TokenObtainResponse-objects as value to a dart map
  static Map<String, List<TokenObtainResponse>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenObtainResponse>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TokenObtainResponse.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

