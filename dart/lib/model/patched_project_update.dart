//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedProjectUpdate {
  /// Returns a new [PatchedProjectUpdate] instance.
  PatchedProjectUpdate({
    this.name,
    this.description,
    this.website,
    this.gallery,
    this.translationsDe,
    this.translationsEn,
    this.translationsFr,
    this.translationsIt,
    this.backlinkUrls,
  });

  /// Name will be visible as title in gallery.
  String name;

  String description;

  String website;

  /// Activates a publicly available gallery with all project models in state READY or ONLINE.
  bool gallery;

  bool translationsDe;

  bool translationsEn;

  bool translationsFr;

  bool translationsIt;

  /// Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
  bool backlinkUrls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedProjectUpdate &&
     other.name == name &&
     other.description == description &&
     other.website == website &&
     other.gallery == gallery &&
     other.translationsDe == translationsDe &&
     other.translationsEn == translationsEn &&
     other.translationsFr == translationsFr &&
     other.translationsIt == translationsIt &&
     other.backlinkUrls == backlinkUrls;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (gallery == null ? 0 : gallery.hashCode) +
    (translationsDe == null ? 0 : translationsDe.hashCode) +
    (translationsEn == null ? 0 : translationsEn.hashCode) +
    (translationsFr == null ? 0 : translationsFr.hashCode) +
    (translationsIt == null ? 0 : translationsIt.hashCode) +
    (backlinkUrls == null ? 0 : backlinkUrls.hashCode);

  @override
  String toString() => 'PatchedProjectUpdate[name=$name, description=$description, website=$website, gallery=$gallery, translationsDe=$translationsDe, translationsEn=$translationsEn, translationsFr=$translationsFr, translationsIt=$translationsIt, backlinkUrls=$backlinkUrls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (website != null) {
      json[r'website'] = website;
    }
    if (gallery != null) {
      json[r'gallery'] = gallery;
    }
    if (translationsDe != null) {
      json[r'translations_de'] = translationsDe;
    }
    if (translationsEn != null) {
      json[r'translations_en'] = translationsEn;
    }
    if (translationsFr != null) {
      json[r'translations_fr'] = translationsFr;
    }
    if (translationsIt != null) {
      json[r'translations_it'] = translationsIt;
    }
    if (backlinkUrls != null) {
      json[r'backlink_urls'] = backlinkUrls;
    }
    return json;
  }

  /// Returns a new [PatchedProjectUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedProjectUpdate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PatchedProjectUpdate(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        website: mapValueOfType<String>(json, r'website'),
        gallery: mapValueOfType<bool>(json, r'gallery'),
        translationsDe: mapValueOfType<bool>(json, r'translations_de'),
        translationsEn: mapValueOfType<bool>(json, r'translations_en'),
        translationsFr: mapValueOfType<bool>(json, r'translations_fr'),
        translationsIt: mapValueOfType<bool>(json, r'translations_it'),
        backlinkUrls: mapValueOfType<bool>(json, r'backlink_urls'),
      );
    }
    return null;
  }

  static List<PatchedProjectUpdate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatchedProjectUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatchedProjectUpdate>[];

  static Map<String, PatchedProjectUpdate> mapFromJson(dynamic json) {
    final map = <String, PatchedProjectUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatchedProjectUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchedProjectUpdate-objects as value to a dart map
  static Map<String, List<PatchedProjectUpdate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatchedProjectUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatchedProjectUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

