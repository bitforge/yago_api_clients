//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectUpdate {
  /// Returns a new [ProjectUpdate] instance.
  ProjectUpdate({
    required this.name,
    this.description,
    this.website,
    this.gallery,
    this.translationsDe,
    this.translationsEn,
    this.translationsFr,
    this.translationsIt,
    this.backlinkUrls,
    this.arbuttonConfig = const {},
  });

  /// Name will be visible as title in gallery.
  String name;

  String? description;

  String? website;

  /// Activates a publicly available gallery with all project models in state READY or ONLINE.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? gallery;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? translationsDe;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? translationsEn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? translationsFr;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? translationsIt;

  /// Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? backlinkUrls;

  Map<String, Object>? arbuttonConfig;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectUpdate &&
     other.name == name &&
     other.description == description &&
     other.website == website &&
     other.gallery == gallery &&
     other.translationsDe == translationsDe &&
     other.translationsEn == translationsEn &&
     other.translationsFr == translationsFr &&
     other.translationsIt == translationsIt &&
     other.backlinkUrls == backlinkUrls &&
     other.arbuttonConfig == arbuttonConfig;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (website == null ? 0 : website!.hashCode) +
    (gallery == null ? 0 : gallery!.hashCode) +
    (translationsDe == null ? 0 : translationsDe!.hashCode) +
    (translationsEn == null ? 0 : translationsEn!.hashCode) +
    (translationsFr == null ? 0 : translationsFr!.hashCode) +
    (translationsIt == null ? 0 : translationsIt!.hashCode) +
    (backlinkUrls == null ? 0 : backlinkUrls!.hashCode) +
    (arbuttonConfig == null ? 0 : arbuttonConfig!.hashCode);

  @override
  String toString() => 'ProjectUpdate[name=$name, description=$description, website=$website, gallery=$gallery, translationsDe=$translationsDe, translationsEn=$translationsEn, translationsFr=$translationsFr, translationsIt=$translationsIt, backlinkUrls=$backlinkUrls, arbuttonConfig=$arbuttonConfig]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.gallery != null) {
      json[r'gallery'] = this.gallery;
    } else {
      json[r'gallery'] = null;
    }
    if (this.translationsDe != null) {
      json[r'translations_de'] = this.translationsDe;
    } else {
      json[r'translations_de'] = null;
    }
    if (this.translationsEn != null) {
      json[r'translations_en'] = this.translationsEn;
    } else {
      json[r'translations_en'] = null;
    }
    if (this.translationsFr != null) {
      json[r'translations_fr'] = this.translationsFr;
    } else {
      json[r'translations_fr'] = null;
    }
    if (this.translationsIt != null) {
      json[r'translations_it'] = this.translationsIt;
    } else {
      json[r'translations_it'] = null;
    }
    if (this.backlinkUrls != null) {
      json[r'backlink_urls'] = this.backlinkUrls;
    } else {
      json[r'backlink_urls'] = null;
    }
    if (this.arbuttonConfig != null) {
      json[r'arbutton_config'] = this.arbuttonConfig;
    } else {
      json[r'arbutton_config'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectUpdate(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        website: mapValueOfType<String>(json, r'website'),
        gallery: mapValueOfType<bool>(json, r'gallery'),
        translationsDe: mapValueOfType<bool>(json, r'translations_de'),
        translationsEn: mapValueOfType<bool>(json, r'translations_en'),
        translationsFr: mapValueOfType<bool>(json, r'translations_fr'),
        translationsIt: mapValueOfType<bool>(json, r'translations_it'),
        backlinkUrls: mapValueOfType<bool>(json, r'backlink_urls'),
        arbuttonConfig: mapCastOfType<String, Object>(json, r'arbutton_config') ?? const {},
      );
    }
    return null;
  }

  static List<ProjectUpdate>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectUpdate> mapFromJson(dynamic json) {
    final map = <String, ProjectUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectUpdate-objects as value to a dart map
  static Map<String, List<ProjectUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectUpdate.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

