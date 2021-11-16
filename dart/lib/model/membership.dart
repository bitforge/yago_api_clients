//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Membership {
  /// Returns a new [Membership] instance.
  Membership({
    @required this.id,
    @required this.project,
    @required this.user,
    this.role,
    @required this.created,
  });

  String id;

  String project;

  String user;

  RoleEnum role;

  DateTime created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Membership &&
     other.id == id &&
     other.project == project &&
     other.user == user &&
     other.role == role &&
     other.created == created;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (role == null ? 0 : role.hashCode) +
    (created == null ? 0 : created.hashCode);

  @override
  String toString() => 'Membership[id=$id, project=$project, user=$user, role=$role, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'project'] = project;
      json[r'user'] = user;
    if (role != null) {
      json[r'role'] = role;
    }
      json[r'created'] = created.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Membership] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Membership fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Membership(
        id: mapValueOfType<String>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        user: mapValueOfType<String>(json, r'user'),
        role: RoleEnum.fromJson(json[r'role']),
        created: mapDateTime(json, r'created', ''),
      );
    }
    return null;
  }

  static List<Membership> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Membership.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Membership>[];

  static Map<String, Membership> mapFromJson(dynamic json) {
    final map = <String, Membership>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Membership.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Membership-objects as value to a dart map
  static Map<String, List<Membership>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Membership>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Membership.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

