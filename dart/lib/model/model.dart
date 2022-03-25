//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Model {
  /// Returns a new [Model] instance.
  Model({
    @required this.id,
    @required this.project,
    @required this.name,
    this.nameDe,
    this.nameEn,
    this.nameFr,
    this.nameIt,
    this.slug,
    this.image,
    @required this.imageThumb,
    @required this.imagePreview,
    this.status,
    @required this.description,
    this.descriptionDe,
    this.descriptionEn,
    this.descriptionFr,
    this.descriptionIt,
    this.number,
    @required this.siteUrl,
    this.siteUrlDe,
    this.siteUrlEn,
    this.siteUrlFr,
    this.siteUrlIt,
    this.sku,
    this.price,
    @required this.priceCurrency,
    this.scaleable,
    this.glb,
    this.usdz,
    this.model,
    this.unityIos,
    this.unityAndroid,
    @required this.created,
    @required this.modified,
  });

  String id;

  /// The project this model belongs to. Cannot be changed once created.
  String project;

  String name;

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

  /// Preview image of the model (iOS, gallery, sharing, SEO).
  String image;

  String imageThumb;

  String imagePreview;

  /// DRAFT=In development, READY=Modelling complete, ONLINE=Active use.
  ModelStatus status;

  String description;

  /// Used when shared as link and for SEO.
  String descriptionDe;

  /// Used when shared as link and for SEO.
  String descriptionEn;

  /// Used when shared as link and for SEO.
  String descriptionFr;

  /// Used when shared as link and for SEO.
  String descriptionIt;

  /// Use for custom sort order.
  // minimum: 0
  // maximum: 2147483647
  int number;

  String siteUrl;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlDe;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlEn;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlFr;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlIt;

  /// Stock-keeping unit. The identfier of the product in external webstore.
  String sku;

  /// Display price. The effective price is determined by the external webstore.
  double price;

  String priceCurrency;

  /// Let's the user scale the model in AR when enabled.
  bool scaleable;

  /// Must be a binary glTF file according to the Khronos Group standard.
  String glb;

  /// Must be a USDZ or Reality Composer file.
  String usdz;

  /// Source of 3D Model (Blender, Maya, Cinema 4D, CAD etc,). Use archive for multiple files.
  String model;

  /// Unity Asset Bundle for Android
  String unityIos;

  /// Unity Asset Bundle for iOS
  String unityAndroid;

  DateTime created;

  DateTime modified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Model &&
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
     other.unityIos == unityIos &&
     other.unityAndroid == unityAndroid &&
     other.created == created &&
     other.modified == modified;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (id == null ? 0 : id.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (nameDe == null ? 0 : nameDe.hashCode) +
    (nameEn == null ? 0 : nameEn.hashCode) +
    (nameFr == null ? 0 : nameFr.hashCode) +
    (nameIt == null ? 0 : nameIt.hashCode) +
    (slug == null ? 0 : slug.hashCode) +
    (image == null ? 0 : image.hashCode) +
    (imageThumb == null ? 0 : imageThumb.hashCode) +
    (imagePreview == null ? 0 : imagePreview.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (descriptionDe == null ? 0 : descriptionDe.hashCode) +
    (descriptionEn == null ? 0 : descriptionEn.hashCode) +
    (descriptionFr == null ? 0 : descriptionFr.hashCode) +
    (descriptionIt == null ? 0 : descriptionIt.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (siteUrl == null ? 0 : siteUrl.hashCode) +
    (siteUrlDe == null ? 0 : siteUrlDe.hashCode) +
    (siteUrlEn == null ? 0 : siteUrlEn.hashCode) +
    (siteUrlFr == null ? 0 : siteUrlFr.hashCode) +
    (siteUrlIt == null ? 0 : siteUrlIt.hashCode) +
    (sku == null ? 0 : sku.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (priceCurrency == null ? 0 : priceCurrency.hashCode) +
    (scaleable == null ? 0 : scaleable.hashCode) +
    (glb == null ? 0 : glb.hashCode) +
    (usdz == null ? 0 : usdz.hashCode) +
    (model == null ? 0 : model.hashCode) +
    (unityIos == null ? 0 : unityIos.hashCode) +
    (unityAndroid == null ? 0 : unityAndroid.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (modified == null ? 0 : modified.hashCode);

  @override
  String toString() => 'Model[id=$id, project=$project, name=$name, nameDe=$nameDe, nameEn=$nameEn, nameFr=$nameFr, nameIt=$nameIt, slug=$slug, image=$image, imageThumb=$imageThumb, imagePreview=$imagePreview, status=$status, description=$description, descriptionDe=$descriptionDe, descriptionEn=$descriptionEn, descriptionFr=$descriptionFr, descriptionIt=$descriptionIt, number=$number, siteUrl=$siteUrl, siteUrlDe=$siteUrlDe, siteUrlEn=$siteUrlEn, siteUrlFr=$siteUrlFr, siteUrlIt=$siteUrlIt, sku=$sku, price=$price, priceCurrency=$priceCurrency, scaleable=$scaleable, glb=$glb, usdz=$usdz, model=$model, unityIos=$unityIos, unityAndroid=$unityAndroid, created=$created, modified=$modified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'project'] = project;
      json[r'name'] = name;
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
    if (slug != null) {
      json[r'slug'] = slug;
    }
    if (image != null) {
      json[r'image'] = image;
    }
      json[r'image_thumb'] = imageThumb;
      json[r'image_preview'] = imagePreview;
    if (status != null) {
      json[r'status'] = status;
    }
      json[r'description'] = description;
    if (descriptionDe != null) {
      json[r'description_de'] = descriptionDe;
    }
    if (descriptionEn != null) {
      json[r'description_en'] = descriptionEn;
    }
    if (descriptionFr != null) {
      json[r'description_fr'] = descriptionFr;
    }
    if (descriptionIt != null) {
      json[r'description_it'] = descriptionIt;
    }
    if (number != null) {
      json[r'number'] = number;
    }
      json[r'site_url'] = siteUrl;
    if (siteUrlDe != null) {
      json[r'site_url_de'] = siteUrlDe;
    }
    if (siteUrlEn != null) {
      json[r'site_url_en'] = siteUrlEn;
    }
    if (siteUrlFr != null) {
      json[r'site_url_fr'] = siteUrlFr;
    }
    if (siteUrlIt != null) {
      json[r'site_url_it'] = siteUrlIt;
    }
    if (sku != null) {
      json[r'sku'] = sku;
    }
    if (price != null) {
      json[r'price'] = price;
    }
      json[r'price_currency'] = priceCurrency;
    if (scaleable != null) {
      json[r'scaleable'] = scaleable;
    }
    if (glb != null) {
      json[r'glb'] = glb;
    }
    if (usdz != null) {
      json[r'usdz'] = usdz;
    }
    if (model != null) {
      json[r'model'] = model;
    }
    if (unityIos != null) {
      json[r'unity_ios'] = unityIos;
    }
    if (unityAndroid != null) {
      json[r'unity_android'] = unityAndroid;
    }
      json[r'created'] = created.toUtc().toIso8601String();
      json[r'modified'] = modified.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Model] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Model fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Model(
        id: mapValueOfType<String>(json, r'id'),
        project: mapValueOfType<String>(json, r'project'),
        name: mapValueOfType<String>(json, r'name'),
        nameDe: mapValueOfType<String>(json, r'name_de'),
        nameEn: mapValueOfType<String>(json, r'name_en'),
        nameFr: mapValueOfType<String>(json, r'name_fr'),
        nameIt: mapValueOfType<String>(json, r'name_it'),
        slug: mapValueOfType<String>(json, r'slug'),
        image: mapValueOfType<String>(json, r'image'),
        imageThumb: mapValueOfType<String>(json, r'image_thumb'),
        imagePreview: mapValueOfType<String>(json, r'image_preview'),
        status: ModelStatus.fromJson(json[r'status']),
        description: mapValueOfType<String>(json, r'description'),
        descriptionDe: mapValueOfType<String>(json, r'description_de'),
        descriptionEn: mapValueOfType<String>(json, r'description_en'),
        descriptionFr: mapValueOfType<String>(json, r'description_fr'),
        descriptionIt: mapValueOfType<String>(json, r'description_it'),
        number: mapValueOfType<int>(json, r'number'),
        siteUrl: mapValueOfType<String>(json, r'site_url'),
        siteUrlDe: mapValueOfType<String>(json, r'site_url_de'),
        siteUrlEn: mapValueOfType<String>(json, r'site_url_en'),
        siteUrlFr: mapValueOfType<String>(json, r'site_url_fr'),
        siteUrlIt: mapValueOfType<String>(json, r'site_url_it'),
        sku: mapValueOfType<String>(json, r'sku'),
        price: mapValueOfType<double>(json, r'price'),
        priceCurrency: mapValueOfType<String>(json, r'price_currency'),
        scaleable: mapValueOfType<bool>(json, r'scaleable'),
        glb: mapValueOfType<String>(json, r'glb'),
        usdz: mapValueOfType<String>(json, r'usdz'),
        model: mapValueOfType<String>(json, r'model'),
        unityIos: mapValueOfType<String>(json, r'unity_ios'),
        unityAndroid: mapValueOfType<String>(json, r'unity_android'),
        created: mapDateTime(json, r'created', ''),
        modified: mapDateTime(json, r'modified', ''),
      );
    }
    return null;
  }

  static List<Model> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Model.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Model>[];

  static Map<String, Model> mapFromJson(dynamic json) {
    final map = <String, Model>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Model.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Model-objects as value to a dart map
  static Map<String, List<Model>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Model>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Model.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

