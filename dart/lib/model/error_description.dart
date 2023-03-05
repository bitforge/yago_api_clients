//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ErrorDescription {
  /// Returns a new [ErrorDescription] instance.
  ErrorDescription({
    required this.title,
    required this.status,
    this.errors = const {},
  });

  String title;

  /// Minimum value: 100
  /// Maximum value: 599
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
    (title.hashCode) +
    (status.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'ErrorDescription[title=$title, status=$status, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'title'] = this.title;
      json[r'status'] = this.status;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [ErrorDescription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorDescription? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorDescription[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorDescription[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorDescription(
        title: mapValueOfType<String>(json, r'title')!,
        status: mapValueOfType<int>(json, r'status')!,
        errors: mapCastOfType<String, Object>(json, r'errors')!,
      );
    }
    return null;
  }

  static List<ErrorDescription>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorDescription>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorDescription.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorDescription> mapFromJson(dynamic json) {
    final map = <String, ErrorDescription>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorDescription.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorDescription-objects as value to a dart map
  static Map<String, List<ErrorDescription>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorDescription>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorDescription.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'status',
    'errors',
  };
}

