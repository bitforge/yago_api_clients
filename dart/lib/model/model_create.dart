//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelCreate {
  /// Returns a new [ModelCreate] instance.
  ModelCreate({
    required this.id,
    required this.project,
    this.nameDe,
    this.nameEn,
    this.nameFr,
    this.nameIt,
    required this.slug,
  });

  String id;

  /// The project this model belongs to. Cannot be changed once created.
  String project;

  /// Name will be visible in Android as title.
  String? nameDe;

  /// Name will be visible in Android as title.
  String? nameEn;

  /// Name will be visible in Android as title.
  String? nameFr;

  /// Name will be visible in Android as title.
  String? nameIt;

  /// Unique Short-URL for embedding. Cannot be changed once created.
  String slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelCreate &&
     other.id == id &&
     other.project == project &&
     other.nameDe == nameDe &&
     other.nameEn == nameEn &&
     other.nameFr == nameFr &&
     other.nameIt == nameIt &&
     other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (project.hashCode) +
    (nameDe == null ? 0 : nameDe!.hashCode) +
    (nameEn == null ? 0 : nameEn!.hashCode) +
    (nameFr == null ? 0 : nameFr!.hashCode) +
    (nameIt == null ? 0 : nameIt!.hashCode) +
    (slug.hashCode);

  @override
  String toString() => 'ModelCreate[id=$id, project=$project, nameDe=$nameDe, nameEn=$nameEn, nameFr=$nameFr, nameIt=$nameIt, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'project'] = this.project;
    if (this.nameDe != null) {
      json[r'name_de'] = this.nameDe;
    } else {
      json[r'name_de'] = null;
    }
    if (this.nameEn != null) {
      json[r'name_en'] = this.nameEn;
    } else {
      json[r'name_en'] = null;
    }
    if (this.nameFr != null) {
      json[r'name_fr'] = this.nameFr;
    } else {
      json[r'name_fr'] = null;
    }
    if (this.nameIt != null) {
      json[r'name_it'] = this.nameIt;
    } else {
      json[r'name_it'] = null;
    }
      json[r'slug'] = this.slug;
    return json;
  }

  /// Returns a new [ModelCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelCreate(
        id: mapValueOfType<String>(json, r'id')!,
        project: mapValueOfType<String>(json, r'project')!,
        nameDe: mapValueOfType<String>(json, r'name_de'),
        nameEn: mapValueOfType<String>(json, r'name_en'),
        nameFr: mapValueOfType<String>(json, r'name_fr'),
        nameIt: mapValueOfType<String>(json, r'name_it'),
        slug: mapValueOfType<String>(json, r'slug')!,
      );
    }
    return null;
  }

  static List<ModelCreate>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelCreate> mapFromJson(dynamic json) {
    final map = <String, ModelCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelCreate-objects as value to a dart map
  static Map<String, List<ModelCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelCreate.listFromJson(entry.value, growable: growable,);
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
    'slug',
  };
}

