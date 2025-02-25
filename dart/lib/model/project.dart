//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

class Project {
  /// Returns a new [Project] instance.
  Project({
    required this.id,
    required this.name,
    this.slug,
    this.customerName = '',
    this.image,
    this.imageThumb = '',
    this.imagePreview = '',
    this.website,
    this.description,
    this.gallery,
    this.translationsDe,
    this.translationsEn,
    this.translationsFr,
    this.translationsIt,
    this.backlinkUrls,
    this.orders = const [],
    this.arbuttonConfig,
    required this.created,
    required this.modified,
  });

  String id;

  /// Name will be visible as title in gallery.
  String name;

  /// Will be part of asset urls. Cannot be changed once created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  String customerName;

  /// Image will be visible in gallery.
  String? image;

  String imageThumb;

  String imagePreview;

  String? website;

  String? description;

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

  List<ActiveOrder> orders;

  Object? arbuttonConfig;

  DateTime created;

  DateTime modified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Project &&
          other.id == id &&
          other.name == name &&
          other.slug == slug &&
          other.customerName == customerName &&
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
          _deepEquality.equals(other.orders, orders) &&
          other.arbuttonConfig == arbuttonConfig &&
          other.created == created &&
          other.modified == modified;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (name.hashCode) +
      (slug == null ? 0 : slug!.hashCode) +
      (customerName.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (imageThumb.hashCode) +
      (imagePreview.hashCode) +
      (website == null ? 0 : website!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (gallery == null ? 0 : gallery!.hashCode) +
      (translationsDe == null ? 0 : translationsDe!.hashCode) +
      (translationsEn == null ? 0 : translationsEn!.hashCode) +
      (translationsFr == null ? 0 : translationsFr!.hashCode) +
      (translationsIt == null ? 0 : translationsIt!.hashCode) +
      (backlinkUrls == null ? 0 : backlinkUrls!.hashCode) +
      (orders.hashCode) +
      (arbuttonConfig == null ? 0 : arbuttonConfig!.hashCode) +
      (created.hashCode) +
      (modified.hashCode);

  @override
  String toString() =>
      'Project[id=$id, name=$name, slug=$slug, customerName=$customerName, image=$image, imageThumb=$imageThumb, imagePreview=$imagePreview, website=$website, description=$description, gallery=$gallery, translationsDe=$translationsDe, translationsEn=$translationsEn, translationsFr=$translationsFr, translationsIt=$translationsIt, backlinkUrls=$backlinkUrls, orders=$orders, arbuttonConfig=$arbuttonConfig, created=$created, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'name'] = this.name;
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    json[r'customer_name'] = this.customerName;
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    json[r'image_thumb'] = this.imageThumb;
    json[r'image_preview'] = this.imagePreview;
    if (this.website != null) {
      json[r'website'] = this.website;
    } else {
      json[r'website'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
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
    json[r'orders'] = this.orders;
    if (this.arbuttonConfig != null) {
      json[r'arbutton_config'] = this.arbuttonConfig;
    } else {
      json[r'arbutton_config'] = null;
    }
    json[r'created'] = this.created.toUtc().toIso8601String();
    json[r'modified'] = this.modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Project] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Project? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Project[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Project[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Project(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        slug: mapValueOfType<String>(json, r'slug'),
        customerName: mapValueOfType<String>(json, r'customer_name') ?? '',
        image: mapValueOfType<String>(json, r'image'),
        imageThumb: mapValueOfType<String>(json, r'image_thumb') ?? '',
        imagePreview: mapValueOfType<String>(json, r'image_preview') ?? '',
        website: mapValueOfType<String>(json, r'website'),
        description: mapValueOfType<String>(json, r'description'),
        gallery: mapValueOfType<bool>(json, r'gallery'),
        translationsDe: mapValueOfType<bool>(json, r'translations_de'),
        translationsEn: mapValueOfType<bool>(json, r'translations_en'),
        translationsFr: mapValueOfType<bool>(json, r'translations_fr'),
        translationsIt: mapValueOfType<bool>(json, r'translations_it'),
        backlinkUrls: mapValueOfType<bool>(json, r'backlink_urls'),
        orders: ActiveOrder.listFromJson(json[r'orders']),
        arbuttonConfig: mapValueOfType<Object>(json, r'arbutton_config'),
        created: mapDateTime(json, r'created', r'')!,
        modified: mapDateTime(json, r'modified', r'')!,
      );
    }
    return null;
  }

  static List<Project> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Project>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Project.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Project> mapFromJson(dynamic json) {
    final map = <String, Project>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Project.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Project>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Project.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'created',
    'modified',
  };
}
