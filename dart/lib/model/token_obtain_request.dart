//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenObtainRequest {
  /// Returns a new [TokenObtainRequest] instance.
  TokenObtainRequest({
    @required this.email,
    @required this.password,
  });

  String email;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenObtainRequest &&
     other.email == email &&
     other.password == password;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (email == null ? 0 : email.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'TokenObtainRequest[email=$email, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = email;
      json[r'password'] = password;
    return json;
  }

  /// Returns a new [TokenObtainRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenObtainRequest fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return TokenObtainRequest(
        email: mapValueOfType<String>(json, r'email'),
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<TokenObtainRequest> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(TokenObtainRequest.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <TokenObtainRequest>[];

  static Map<String, TokenObtainRequest> mapFromJson(dynamic json) {
    final map = <String, TokenObtainRequest>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = TokenObtainRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TokenObtainRequest-objects as value to a dart map
  static Map<String, List<TokenObtainRequest>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TokenObtainRequest>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = TokenObtainRequest.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

