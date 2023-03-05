//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Membership {
  /// Returns a new [Membership] instance.
  Membership({
    required this.id,
    required this.project,
    required this.user,
    this.role,
    required this.created,
  });

  String id;

  String project;

  String user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RoleEnum? role;

  DateTime created;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Membership &&
          other.id == id &&
          other.project == project &&
          other.user == user &&
          other.role == role &&
          other.created == created;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) + (project.hashCode) + (user.hashCode) + (role == null ? 0 : role!.hashCode) + (created.hashCode);

  @override
  String toString() => 'Membership[id=$id, project=$project, user=$user, role=$role, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'project'] = this.project;
    json[r'user'] = this.user;
    if (this.role != null) {
      json[r'role'] = this.role;
    } else {
      json[r'role'] = null;
    }
    json[r'created'] = this.created.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Membership] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Membership? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Membership[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Membership[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Membership(
        id: mapValueOfType<String>(json, r'id')!,
        project: mapValueOfType<String>(json, r'project')!,
        user: mapValueOfType<String>(json, r'user')!,
        role: RoleEnum.fromJson(json[r'role']),
        created: mapDateTime(json, r'created', '')!,
      );
    }
    return null;
  }

  static List<Membership>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Membership>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Membership.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Membership> mapFromJson(dynamic json) {
    final map = <String, Membership>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Membership.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Membership-objects as value to a dart map
  static Map<String, List<Membership>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Membership>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Membership.listFromJson(
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
    'id',
    'project',
    'user',
    'created',
  };
}
