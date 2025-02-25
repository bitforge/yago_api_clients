//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of yago;

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
    this.verticalPlacement,
  });

  /// Name will be visible in Android as title.
  String? nameDe;

  /// Name will be visible in Android as title.
  String? nameEn;

  /// Name will be visible in Android as title.
  String? nameFr;

  /// Name will be visible in Android as title.
  String? nameIt;

  /// DRAFT=In development, READY=Modelling complete, ONLINE=Active use.  * `DRAFT` - Draft * `READY` - Ready * `ONLINE` - Online
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ModelStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

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

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlDe;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlEn;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlFr;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  String? siteUrlIt;

  /// Let's the user scale the model in AR when enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scaleable;

  /// Stock-keeping unit. The identfier of the product in external webstore.
  String? sku;

  /// Display price. The effective price is determined by the external webstore.
  double? price;

  String? priceCurrency;

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
      other is PatchedModelUpdate &&
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
          other.priceCurrency == priceCurrency &&
          other.verticalPlacement == verticalPlacement;

  @override
  int get hashCode =>
      // ignore: unnecessary_parenthesis
      (nameDe == null ? 0 : nameDe!.hashCode) +
      (nameEn == null ? 0 : nameEn!.hashCode) +
      (nameFr == null ? 0 : nameFr!.hashCode) +
      (nameIt == null ? 0 : nameIt!.hashCode) +
      (status == null ? 0 : status!.hashCode) +
      (description == null ? 0 : description!.hashCode) +
      (descriptionDe == null ? 0 : descriptionDe!.hashCode) +
      (descriptionEn == null ? 0 : descriptionEn!.hashCode) +
      (descriptionFr == null ? 0 : descriptionFr!.hashCode) +
      (descriptionIt == null ? 0 : descriptionIt!.hashCode) +
      (number == null ? 0 : number!.hashCode) +
      (siteUrlDe == null ? 0 : siteUrlDe!.hashCode) +
      (siteUrlEn == null ? 0 : siteUrlEn!.hashCode) +
      (siteUrlFr == null ? 0 : siteUrlFr!.hashCode) +
      (siteUrlIt == null ? 0 : siteUrlIt!.hashCode) +
      (scaleable == null ? 0 : scaleable!.hashCode) +
      (sku == null ? 0 : sku!.hashCode) +
      (price == null ? 0 : price!.hashCode) +
      (priceCurrency == null ? 0 : priceCurrency!.hashCode) +
      (verticalPlacement == null ? 0 : verticalPlacement!.hashCode);

  @override
  String toString() =>
      'PatchedModelUpdate[nameDe=$nameDe, nameEn=$nameEn, nameFr=$nameFr, nameIt=$nameIt, status=$status, description=$description, descriptionDe=$descriptionDe, descriptionEn=$descriptionEn, descriptionFr=$descriptionFr, descriptionIt=$descriptionIt, number=$number, siteUrlDe=$siteUrlDe, siteUrlEn=$siteUrlEn, siteUrlFr=$siteUrlFr, siteUrlIt=$siteUrlIt, scaleable=$scaleable, sku=$sku, price=$price, priceCurrency=$priceCurrency, verticalPlacement=$verticalPlacement]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
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
    if (this.scaleable != null) {
      json[r'scaleable'] = this.scaleable;
    } else {
      json[r'scaleable'] = null;
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
    if (this.priceCurrency != null) {
      json[r'price_currency'] = this.priceCurrency;
    } else {
      json[r'price_currency'] = null;
    }
    if (this.verticalPlacement != null) {
      json[r'vertical_placement'] = this.verticalPlacement;
    } else {
      json[r'vertical_placement'] = null;
    }
    return json;
  }

  /// Returns a new [PatchedModelUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchedModelUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PatchedModelUpdate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PatchedModelUpdate[$key]" has a null value in JSON.');
        });
        return true;
      }());

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
        verticalPlacement: mapValueOfType<bool>(json, r'vertical_placement'),
      );
    }
    return null;
  }

  static List<PatchedModelUpdate> listFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final result = <PatchedModelUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchedModelUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchedModelUpdate> mapFromJson(dynamic json) {
    final map = <String, PatchedModelUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchedModelUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchedModelUpdate-objects as value to a dart map
  static Map<String, List<PatchedModelUpdate>> mapListFromJson(
    dynamic json, {
    bool growable = false,
  }) {
    final map = <String, List<PatchedModelUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchedModelUpdate.listFromJson(
          entry.value,
          growable: growable,
        );
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{};
}
