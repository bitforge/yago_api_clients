//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorDescription {
  /// Returns a new [ErrorDescription] instance.
  ErrorDescription({
    @required this.title,
    @required this.status,
    this.errors = const {},
  });

  String title;

  // minimum: 100
  // maximum: 599
  int status;

  Map<String, Object> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorDescription &&
     other.title == title &&
     other.status == status &&
     other.errors == errors;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (title == null ? 0 : title.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (errors == null ? 0 : errors.hashCode);

  @override
  String toString() => 'ErrorDescription[title=$title, status=$status, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = title;
      json[r'status'] = status;
      json[r'errors'] = errors;
    return json;
  }

  /// Returns a new [ErrorDescription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorDescription fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ErrorDescription(
        title: mapValueOfType<String>(json, r'title'),
        status: mapValueOfType<int>(json, r'status'),
        errors: mapValueOfType<Map<String, Object>>(json, r'errors'),
      );
    }
    return null;
  }

  static List<ErrorDescription> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ErrorDescription.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ErrorDescription>[];

  static Map<String, ErrorDescription> mapFromJson(dynamic json) {
    final map = <String, ErrorDescription>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ErrorDescription.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ErrorDescription-objects as value to a dart map
  static Map<String, List<ErrorDescription>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ErrorDescription>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ErrorDescription.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

