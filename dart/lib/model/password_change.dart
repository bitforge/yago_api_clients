//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class PasswordChange {
  /// Returns a new [PasswordChange] instance.
  PasswordChange({
    required this.oldPassword,
    required this.newPassword1,
    required this.newPassword2,
  });

  String oldPassword;

  String newPassword1;

  String newPassword2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PasswordChange &&
          other.oldPassword == oldPassword &&
          other.newPassword1 == newPassword1 &&
          other.newPassword2 == newPassword2;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (oldPassword.hashCode) + (newPassword1.hashCode) + (newPassword2.hashCode);

  @override
  String toString() =>
      'PasswordChange[oldPassword=$oldPassword, newPassword1=$newPassword1, newPassword2=$newPassword2]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'old_password'] = this.oldPassword;
    json[r'new_password1'] = this.newPassword1;
    json[r'new_password2'] = this.newPassword2;
    return json;
  }

  /// Returns a new [PasswordChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PasswordChange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PasswordChange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PasswordChange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PasswordChange(
        oldPassword: mapValueOfType<String>(json, r'old_password')!,
        newPassword1: mapValueOfType<String>(json, r'new_password1')!,
        newPassword2: mapValueOfType<String>(json, r'new_password2')!,
      );
    }
    return null;
  }

  static List<PasswordChange> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PasswordChange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PasswordChange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PasswordChange> mapFromJson(dynamic json) {
    final map = <String, PasswordChange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PasswordChange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PasswordChange-objects as value to a dart map
  static Map<String, List<PasswordChange>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PasswordChange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PasswordChange.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'old_password',
    'new_password1',
    'new_password2',
  };
}
