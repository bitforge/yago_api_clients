//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenVerify {
  /// Returns a new [TokenVerify] instance.
  TokenVerify({
    @required this.token,
  });

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenVerify &&
     other.token == token;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (token == null ? 0 : token.hashCode);

  @override
  String toString() => 'TokenVerify[token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = token;
    return json;
  }

  /// Returns a new [TokenVerify] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenVerify fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TokenVerify(
        token: mapValueOfType<String>(json, r'token'),
      );
    }
    return null;
  }

  static List<TokenVerify> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TokenVerify.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TokenVerify>[];

  static Map<String, TokenVerify> mapFromJson(dynamic json) {
    final map = <String, TokenVerify>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TokenVerify.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TokenVerify-objects as value to a dart map
  static Map<String, List<TokenVerify>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenVerify>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TokenVerify.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

