//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelCreate {
  /// Returns a new [ModelCreate] instance.
  ModelCreate({
    @required this.id,
    @required this.project,
    this.nameDe,
    this.nameEn,
    this.nameFr,
    this.nameIt,
    @required this.slug,
  });

  String id;

  /// The project this model belongs to. Cannot be changed once created.
  String project;

  /// Name will be visible in Android as title.
  String nameDe;

  /// Name will be visible in Android as title.
  String nameEn;

  /// Name will be visible in Android as title.
  String nameFr;

  /// Name will be visible in Android as title.
  String nameIt;

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
    (id == null ? 0 : id.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (nameDe == null ? 0 : nameDe.hashCode) +
    (nameEn == null ? 0 : nameEn.hashCode) +
    (nameFr == null ? 0 : nameFr.hashCode) +
    (nameIt == null ? 0 : nameIt.hashCode) +
    (slug == null ? 0 : slug.hashCode);

  @override
  String toString() => 'ModelCreate[id=$id, project=$project, nameDe=$nameDe, nameEn=$nameEn, nameFr=$nameFr, nameIt=$nameIt, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'project'] = project;
    if (nameDe != null) {
      json[r'name_de'] = nameDe;
    }
    if (nameEn != null) {
      json[r'name_en'] = nameEn;
    }
    if (nameFr != null) {
      json[r'name_fr'] = nameFr;
    }
    if (nameIt != null) {
      json[r'name_it'] = nameIt;
    }
      json[r'slug'] = slug;
    return json;
  }

  /// Returns a new [ModelCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelCreate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return ModelCreate(
        id: mapValueOfType<String>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        nameDe: mapValueOfType<String>(json, r'name_de'),
        nameEn: mapValueOfType<String>(json, r'name_en'),
        nameFr: mapValueOfType<String>(json, r'name_fr'),
        nameIt: mapValueOfType<String>(json, r'name_it'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<ModelCreate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(ModelCreate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <ModelCreate>[];

  static Map<String, ModelCreate> mapFromJson(dynamic json) {
    final map = <String, ModelCreate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = ModelCreate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ModelCreate-objects as value to a dart map
  static Map<String, List<ModelCreate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ModelCreate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = ModelCreate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

