//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PatchedModelUpdate {
  /// Returns a new [PatchedModelUpdate] instance.
  PatchedModelUpdate({
    this.nameDe,
    this.nameEn,
    this.nameFr,
    this.nameIt,
    this.status,
    this.description,
    this.descriptionDe,
    this.descriptionEn,
    this.descriptionFr,
    this.descriptionIt,
    this.number,
    this.siteUrlDe,
    this.siteUrlEn,
    this.siteUrlFr,
    this.siteUrlIt,
    this.scaleable,
    this.sku,
    this.price,
    this.priceCurrency,
  });

  /// Name will be visible in Android as title.
  String nameDe;

  /// Name will be visible in Android as title.
  String nameEn;

  /// Name will be visible in Android as title.
  String nameFr;

  /// Name will be visible in Android as title.
  String nameIt;

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

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlDe;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlEn;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlFr;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String siteUrlIt;

  /// Let's the user scale the model in AR when enabled.
  bool scaleable;

  /// Stock-keeping unit. The identfier of the product in external webstore.
  String sku;

  /// Display price. The effective price is determined by the external webstore.
  double price;

  String priceCurrency;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchedModelUpdate &&
     other.nameDe == nameDe &&
     other.nameEn == nameEn &&
     other.nameFr == nameFr &&
     other.nameIt == nameIt &&
     other.status == status &&
     other.description == description &&
     other.descriptionDe == descriptionDe &&
     other.descriptionEn == descriptionEn &&
     other.descriptionFr == descriptionFr &&
     other.descriptionIt == descriptionIt &&
     other.number == number &&
     other.siteUrlDe == siteUrlDe &&
     other.siteUrlEn == siteUrlEn &&
     other.siteUrlFr == siteUrlFr &&
     other.siteUrlIt == siteUrlIt &&
     other.scaleable == scaleable &&
     other.sku == sku &&
     other.price == price &&
     other.priceCurrency == priceCurrency;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (nameDe == null ? 0 : nameDe.hashCode) +
    (nameEn == null ? 0 : nameEn.hashCode) +
    (nameFr == null ? 0 : nameFr.hashCode) +
    (nameIt == null ? 0 : nameIt.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (descriptionDe == null ? 0 : descriptionDe.hashCode) +
    (descriptionEn == null ? 0 : descriptionEn.hashCode) +
    (descriptionFr == null ? 0 : descriptionFr.hashCode) +
    (descriptionIt == null ? 0 : descriptionIt.hashCode) +
    (number == null ? 0 : number.hashCode) +
    (siteUrlDe == null ? 0 : siteUrlDe.hashCode) +
    (siteUrlEn == null ? 0 : siteUrlEn.hashCode) +
    (siteUrlFr == null ? 0 : siteUrlFr.hashCode) +
    (siteUrlIt == null ? 0 : siteUrlIt.hashCode) +
    (scaleable == null ? 0 : scaleable.hashCode) +
    (sku == null ? 0 : sku.hashCode) +
    (price == null ? 0 : price.hashCode) +
    (priceCurrency == null ? 0 : priceCurrency.hashCode);

  @override
  String toString() => 'PatchedModelUpdate[nameDe=$nameDe, nameEn=$nameEn, nameFr=$nameFr, nameIt=$nameIt, status=$status, description=$description, descriptionDe=$descriptionDe, descriptionEn=$descriptionEn, descriptionFr=$descriptionFr, descriptionIt=$descriptionIt, number=$number, siteUrlDe=$siteUrlDe, siteUrlEn=$siteUrlEn, siteUrlFr=$siteUrlFr, siteUrlIt=$siteUrlIt, scaleable=$scaleable, sku=$sku, price=$price, priceCurrency=$priceCurrency]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (status != null) {
      json[r'status'] = status;
    }
    if (description != null) {
      json[r'description'] = description;
    }
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
    if (scaleable != null) {
      json[r'scaleable'] = scaleable;
    }
    if (sku != null) {
      json[r'sku'] = sku;
    }
    if (price != null) {
      json[r'price'] = price;
    }
    if (priceCurrency != null) {
      json[r'price_currency'] = priceCurrency;
    }
    return json;
  }

  /// Returns a new [PatchedModelUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedModelUpdate fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return PatchedModelUpdate(
        nameDe: mapValueOfType<String>(json, r'name_de'),
        nameEn: mapValueOfType<String>(json, r'name_en'),
        nameFr: mapValueOfType<String>(json, r'name_fr'),
        nameIt: mapValueOfType<String>(json, r'name_it'),
        status: ModelStatus.fromJson(json[r'status']),
        description: mapValueOfType<String>(json, r'description'),
        descriptionDe: mapValueOfType<String>(json, r'description_de'),
        descriptionEn: mapValueOfType<String>(json, r'description_en'),
        descriptionFr: mapValueOfType<String>(json, r'description_fr'),
        descriptionIt: mapValueOfType<String>(json, r'description_it'),
        number: mapValueOfType<int>(json, r'number'),
        siteUrlDe: mapValueOfType<String>(json, r'site_url_de'),
        siteUrlEn: mapValueOfType<String>(json, r'site_url_en'),
        siteUrlFr: mapValueOfType<String>(json, r'site_url_fr'),
        siteUrlIt: mapValueOfType<String>(json, r'site_url_it'),
        scaleable: mapValueOfType<bool>(json, r'scaleable'),
        sku: mapValueOfType<String>(json, r'sku'),
        price: mapValueOfType<double>(json, r'price'),
        priceCurrency: mapValueOfType<String>(json, r'price_currency'),
      );
    }
    return null;
  }

  static List<PatchedModelUpdate> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(PatchedModelUpdate.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <PatchedModelUpdate>[];

  static Map<String, PatchedModelUpdate> mapFromJson(dynamic json) {
    final map = <String, PatchedModelUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = PatchedModelUpdate.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PatchedModelUpdate-objects as value to a dart map
  static Map<String, List<PatchedModelUpdate>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PatchedModelUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = PatchedModelUpdate.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

