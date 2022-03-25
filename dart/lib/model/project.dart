//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Project {
  /// Returns a new [Project] instance.
  Project({
    @required this.id,
    @required this.name,
    @required this.slug,
    this.image,
    @required this.imageThumb,
    @required this.imagePreview,
    this.website,
    this.description,
    this.gallery,
    this.translationsDe,
    this.translationsEn,
    this.translationsFr,
    this.translationsIt,
    this.backlinkUrls,
    this.orders = const [],
    @required this.created,
    @required this.modified,
  });

  String id;

  /// Name will be visible as title in gallery.
  String name;

  /// Will be part of asset urls. Cannot be changed once created.
  String slug;

  /// Image will be visible in gallery.
  String image;

  String imageThumb;

  String imagePreview;

  String website;

  String description;

  /// Activates a publicly available gallery with all project models in state READY or ONLINE.
  bool gallery;

  bool translationsDe;

  bool translationsEn;

  bool translationsFr;

  bool translationsIt;

  /// Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
  bool backlinkUrls;

  List<ActiveOrder> orders;

  DateTime created;

  DateTime modified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Project &&
     other.id == id &&
     other.name == name &&
     other.slug == slug &&
     other.image == image &&
     other.imageThumb == imageThumb &&
     other.imagePreview == imagePreview &&
     other.website == website &&
     other.description == description &&
     other.gallery == gallery &&
     other.translationsDe == translationsDe &&
     other.translationsEn == translationsEn &&
     other.translationsFr == translationsFr &&
     other.translationsIt == translationsIt &&
     other.backlinkUrls == backlinkUrls &&
     other.orders == orders &&
     other.created == created &&
     other.modified == modified;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (slug == null ? 0 : slug.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (imageThumb == null ? 0 : imageThumb.hashCode) +
    (imagePreview == null ? 0 : imagePreview.hashCode) +
    (website == null ? 0 : website.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (gallery == null ? 0 : gallery.hashCode) +
    (translationsDe == null ? 0 : translationsDe.hashCode) +
    (translationsEn == null ? 0 : translationsEn.hashCode) +
    (translationsFr == null ? 0 : translationsFr.hashCode) +
    (translationsIt == null ? 0 : translationsIt.hashCode) +
    (backlinkUrls == null ? 0 : backlinkUrls.hashCode) +
    (orders == null ? 0 : orders.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode);

  @override
  String toString() => 'Project[id=$id, name=$name, slug=$slug, image=$image, imageThumb=$imageThumb, imagePreview=$imagePreview, website=$website, description=$description, gallery=$gallery, translationsDe=$translationsDe, translationsEn=$translationsEn, translationsFr=$translationsFr, translationsIt=$translationsIt, backlinkUrls=$backlinkUrls, orders=$orders, created=$created, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'name'] = name;
      json[r'slug'] = slug;
    if (image != null) {
      json[r'image'] = image;
    }
      json[r'image_thumb'] = imageThumb;
      json[r'image_preview'] = imagePreview;
    if (website != null) {
      json[r'website'] = website;
    }
    if (description != null) {
      json[r'description'] = description;
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
      json[r'orders'] = orders;
      json[r'created'] = created.toUtc().toIso8601String();
      json[r'modified'] = modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Project] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Project fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Project(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        slug: mapValueOfType<String>(json, r'slug'),
        image: mapValueOfType<String>(json, r'image'),
        imageThumb: mapValueOfType<String>(json, r'image_thumb'),
        imagePreview: mapValueOfType<String>(json, r'image_preview'),
        website: mapValueOfType<String>(json, r'website'),
        description: mapValueOfType<String>(json, r'description'),
        gallery: mapValueOfType<bool>(json, r'gallery'),
        translationsDe: mapValueOfType<bool>(json, r'translations_de'),
        translationsEn: mapValueOfType<bool>(json, r'translations_en'),
        translationsFr: mapValueOfType<bool>(json, r'translations_fr'),
        translationsIt: mapValueOfType<bool>(json, r'translations_it'),
        backlinkUrls: mapValueOfType<bool>(json, r'backlink_urls'),
        orders: ActiveOrder.listFromJson(json[r'orders']),
        created: mapDateTime(json, r'created', ''),
        modified: mapDateTime(json, r'modified', ''),
      );
    }
    return null;
  }

  static List<Project> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Project.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Project>[];

  static Map<String, Project> mapFromJson(dynamic json) {
    final map = <String, Project>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Project.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Project>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Project.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

