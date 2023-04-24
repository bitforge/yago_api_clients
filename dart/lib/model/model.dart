//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Model {
  /// Returns a new [Model] instance.
  Model({
    required this.id,
    required this.project,
    required this.name,
    this.nameDe,
    this.nameEn,
    this.nameFr,
    this.nameIt,
    this.slug,
    this.image,
    this.imageThumb = '',
    this.imagePreview = '',
    this.preview,
    this.status,
    this.description = '',
    this.descriptionDe,
    this.descriptionEn,
    this.descriptionFr,
    this.descriptionIt,
    this.number,
    this.siteUrl = '',
    this.siteUrlDe,
    this.siteUrlEn,
    this.siteUrlFr,
    this.siteUrlIt,
    this.sku,
    this.price,
    this.priceCurrency = 'CHF',
    this.scaleable,
    this.glb,
    this.usdz,
    this.model,
    this.arbuttonConfig = const {},
    required this.created,
    required this.modified,
    this.verticalPlacement,
  });

  String id;

  /// The project this model belongs to. Cannot be changed once created.
  String project;

  String name;

  /// Name will be visible in Android as title.
  String? nameDe;

  /// Name will be visible in Android as title.
  String? nameEn;

  /// Name will be visible in Android as title.
  String? nameFr;

  /// Name will be visible in Android as title.
  String? nameIt;

  /// Unique Short-URL for embedding. Cannot be changed once created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  /// Preview image of the model (iOS, gallery, sharing, SEO).
  String? image;

  String imageThumb;

  String imagePreview;

  /// True when model is in order and work is still in progress. False when order is completed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? preview;

  /// DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online
  ModelStatus? status;

  String description;

  /// Used when shared as link and for SEO.
  String? descriptionDe;

  /// Used when shared as link and for SEO.
  String? descriptionEn;

  /// Used when shared as link and for SEO.
  String? descriptionFr;

  /// Used when shared as link and for SEO.
  String? descriptionIt;

  /// Use for custom sort order.
  ///
  /// Minimum value: 0
  /// Maximum value: 2147483647
  int? number;

  String siteUrl;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlDe;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlEn;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlFr;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlIt;

  /// Stock-keeping unit. The identfier of the product in external webstore.
  String? sku;

  /// Display price. The effective price is determined by the external webstore.
  double? price;

  String priceCurrency;

  /// Let's the user scale the model in AR when enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scaleable;

  /// Must be a binary glTF file according to the Khronos Group standard.
  String? glb;

  /// Must be a USDZ or Reality Composer file.
  String? usdz;

  /// Source of 3D Model (Blender, Maya, Cinema 4D, CAD etc,). Use archive for multiple files.
  String? model;

  Map<String, Object> arbuttonConfig;

  DateTime created;

  DateTime modified;

  /// When set to true, users will be able to place the model on a vertical surface.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verticalPlacement;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Model &&
          other.id == id &&
          other.project == project &&
          other.name == name &&
          other.nameDe == nameDe &&
          other.nameEn == nameEn &&
          other.nameFr == nameFr &&
          other.nameIt == nameIt &&
          other.slug == slug &&
          other.image == image &&
          other.imageThumb == imageThumb &&
          other.imagePreview == imagePreview &&
          other.preview == preview &&
          other.status == status &&
          other.description == description &&
          other.descriptionDe == descriptionDe &&
          other.descriptionEn == descriptionEn &&
          other.descriptionFr == descriptionFr &&
          other.descriptionIt == descriptionIt &&
          other.number == number &&
          other.siteUrl == siteUrl &&
          other.siteUrlDe == siteUrlDe &&
          other.siteUrlEn == siteUrlEn &&
          other.siteUrlFr == siteUrlFr &&
          other.siteUrlIt == siteUrlIt &&
          other.sku == sku &&
          other.price == price &&
          other.priceCurrency == priceCurrency &&
          other.scaleable == scaleable &&
          other.glb == glb &&
          other.usdz == usdz &&
          other.model == model &&
          other.arbuttonConfig == arbuttonConfig &&
          other.created == created &&
          other.modified == modified &&
          other.verticalPlacement == verticalPlacement;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (id.hashCode) +
      (project.hashCode) +
      (name.hashCode) +
      (nameDe == null ? 0 : nameDe!.hashCode) +
      (nameEn == null ? 0 : nameEn!.hashCode) +
      (nameFr == null ? 0 : nameFr!.hashCode) +
      (nameIt == null ? 0 : nameIt!.hashCode) +
      (slug == null ? 0 : slug!.hashCode) +
      (image == null ? 0 : image!.hashCode) +
      (imageThumb.hashCode) +
      (imagePreview.hashCode) +
      (preview == null ? 0 : preview!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (description.hashCode) +
      (descriptionDe == null ? 0 : descriptionDe!.hashCode) +
      (descriptionEn == null ? 0 : descriptionEn!.hashCode) +
      (descriptionFr == null ? 0 : descriptionFr!.hashCode) +
      (descriptionIt == null ? 0 : descriptionIt!.hashCode) +
      (number == null ? 0 : number!.hashCode) +
      (siteUrl.hashCode) +
      (siteUrlDe == null ? 0 : siteUrlDe!.hashCode) +
      (siteUrlEn == null ? 0 : siteUrlEn!.hashCode) +
      (siteUrlFr == null ? 0 : siteUrlFr!.hashCode) +
      (siteUrlIt == null ? 0 : siteUrlIt!.hashCode) +
      (sku == null ? 0 : sku!.hashCode) +
      (price == null ? 0 : price!.hashCode) +
      (priceCurrency.hashCode) +
      (scaleable == null ? 0 : scaleable!.hashCode) +
      (glb == null ? 0 : glb!.hashCode) +
      (usdz == null ? 0 : usdz!.hashCode) +
      (model == null ? 0 : model!.hashCode) +
      (arbuttonConfig.hashCode) +
      (created.hashCode) +
      (modified.hashCode) +
      (verticalPlacement == null ? 0 : verticalPlacement!.hashCode);

  @override
  String toString() =>
      'Model[id=$id, project=$project, name=$name, nameDe=$nameDe, nameEn=$nameEn, nameFr=$nameFr, nameIt=$nameIt, slug=$slug, image=$image, imageThumb=$imageThumb, imagePreview=$imagePreview, preview=$preview, status=$status, description=$description, descriptionDe=$descriptionDe, descriptionEn=$descriptionEn, descriptionFr=$descriptionFr, descriptionIt=$descriptionIt, number=$number, siteUrl=$siteUrl, siteUrlDe=$siteUrlDe, siteUrlEn=$siteUrlEn, siteUrlFr=$siteUrlFr, siteUrlIt=$siteUrlIt, sku=$sku, price=$price, priceCurrency=$priceCurrency, scaleable=$scaleable, glb=$glb, usdz=$usdz, model=$model, arbuttonConfig=$arbuttonConfig, created=$created, modified=$modified, verticalPlacement=$verticalPlacement]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json[r'id'] = this.id;
    json[r'project'] = this.project;
    json[r'name'] = this.name;
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
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    if (this.image != null) {
      json[r'image'] = this.image;
    } else {
      json[r'image'] = null;
    }
    json[r'image_thumb'] = this.imageThumb;
    json[r'image_preview'] = this.imagePreview;
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    json[r'description'] = this.description;
    if (this.descriptionDe != null) {
      json[r'description_de'] = this.descriptionDe;
    } else {
      json[r'description_de'] = null;
    }
    if (this.descriptionEn != null) {
      json[r'description_en'] = this.descriptionEn;
    } else {
      json[r'description_en'] = null;
    }
    if (this.descriptionFr != null) {
      json[r'description_fr'] = this.descriptionFr;
    } else {
      json[r'description_fr'] = null;
    }
    if (this.descriptionIt != null) {
      json[r'description_it'] = this.descriptionIt;
    } else {
      json[r'description_it'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    json[r'site_url'] = this.siteUrl;
    if (this.siteUrlDe != null) {
      json[r'site_url_de'] = this.siteUrlDe;
    } else {
      json[r'site_url_de'] = null;
    }
    if (this.siteUrlEn != null) {
      json[r'site_url_en'] = this.siteUrlEn;
    } else {
      json[r'site_url_en'] = null;
    }
    if (this.siteUrlFr != null) {
      json[r'site_url_fr'] = this.siteUrlFr;
    } else {
      json[r'site_url_fr'] = null;
    }
    if (this.siteUrlIt != null) {
      json[r'site_url_it'] = this.siteUrlIt;
    } else {
      json[r'site_url_it'] = null;
    }
    if (this.sku != null) {
      json[r'sku'] = this.sku;
    } else {
      json[r'sku'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    json[r'price_currency'] = this.priceCurrency;
    if (this.scaleable != null) {
      json[r'scaleable'] = this.scaleable;
    } else {
      json[r'scaleable'] = null;
    }
    if (this.glb != null) {
      json[r'glb'] = this.glb;
    } else {
      json[r'glb'] = null;
    }
    if (this.usdz != null) {
      json[r'usdz'] = this.usdz;
    } else {
      json[r'usdz'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    json[r'arbutton_config'] = this.arbuttonConfig;
    json[r'created'] = this.created.toUtc().toIso8601String();
    json[r'modified'] = this.modified.toUtc().toIso8601String();
    if (this.verticalPlacement != null) {
      json[r'vertical_placement'] = this.verticalPlacement;
    } else {
      json[r'vertical_placement'] = null;
    }
    return json;
  }

  /// Returns a new [Model] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Model[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Model[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Model(
        id: mapValueOfType<String>(json, r'id')!,
        project: mapValueOfType<String>(json, r'project')!,
        name: mapValueOfType<String>(json, r'name')!,
        nameDe: mapValueOfType<String>(json, r'name_de'),
        nameEn: mapValueOfType<String>(json, r'name_en'),
        nameFr: mapValueOfType<String>(json, r'name_fr'),
        nameIt: mapValueOfType<String>(json, r'name_it'),
        slug: mapValueOfType<String>(json, r'slug'),
        image: mapValueOfType<String>(json, r'image'),
        imageThumb: mapValueOfType<String>(json, r'image_thumb') ?? '',
        imagePreview: mapValueOfType<String>(json, r'image_preview') ?? '',
        preview: mapValueOfType<bool>(json, r'preview'),
        status: ModelStatus.fromJson(json[r'status']),
        description: mapValueOfType<String>(json, r'description') ?? '',
        descriptionDe: mapValueOfType<String>(json, r'description_de'),
        descriptionEn: mapValueOfType<String>(json, r'description_en'),
        descriptionFr: mapValueOfType<String>(json, r'description_fr'),
        descriptionIt: mapValueOfType<String>(json, r'description_it'),
        number: mapValueOfType<int>(json, r'number'),
        siteUrl: mapValueOfType<String>(json, r'site_url') ?? '',
        siteUrlDe: mapValueOfType<String>(json, r'site_url_de'),
        siteUrlEn: mapValueOfType<String>(json, r'site_url_en'),
        siteUrlFr: mapValueOfType<String>(json, r'site_url_fr'),
        siteUrlIt: mapValueOfType<String>(json, r'site_url_it'),
        sku: mapValueOfType<String>(json, r'sku'),
        price: mapValueOfType<double>(json, r'price'),
        priceCurrency: mapValueOfType<String>(json, r'price_currency') ?? 'CHF',
        scaleable: mapValueOfType<bool>(json, r'scaleable'),
        glb: mapValueOfType<String>(json, r'glb'),
        usdz: mapValueOfType<String>(json, r'usdz'),
        model: mapValueOfType<String>(json, r'model'),
        arbuttonConfig: mapCastOfType<String, Object>(json, r'arbutton_config') ?? const {},
        created: mapDateTime(json, r'created', '')!,
        modified: mapDateTime(json, r'modified', '')!,
        verticalPlacement: mapValueOfType<bool>(json, r'vertical_placement'),
      );
    }
    return null;
  }

  static List<Model>? listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <Model>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Model.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Model> mapFromJson(dynamic json) {
    final map = <String, Model>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Model-objects as value to a dart map
  static Map<String, List<Model>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<Model>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Model.listFromJson(
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
    'name',
    'created',
    'modified',
  };
}
