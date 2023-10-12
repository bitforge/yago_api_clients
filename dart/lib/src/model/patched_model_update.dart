//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/model_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'patched_model_update.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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
  @JsonKey(name: r'name_de', required: false, includeIfNull: false)
  final String? nameDe;

  /// Name will be visible in Android as title.
  @JsonKey(name: r'name_en', required: false, includeIfNull: false)
  final String? nameEn;

  /// Name will be visible in Android as title.
  @JsonKey(name: r'name_fr', required: false, includeIfNull: false)
  final String? nameFr;

  /// Name will be visible in Android as title.
  @JsonKey(name: r'name_it', required: false, includeIfNull: false)
  final String? nameIt;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final ModelStatus? status;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  /// Used when shared as link and for SEO.
  @JsonKey(name: r'description_de', required: false, includeIfNull: false)
  final String? descriptionDe;

  /// Used when shared as link and for SEO.
  @JsonKey(name: r'description_en', required: false, includeIfNull: false)
  final String? descriptionEn;

  /// Used when shared as link and for SEO.
  @JsonKey(name: r'description_fr', required: false, includeIfNull: false)
  final String? descriptionFr;

  /// Used when shared as link and for SEO.
  @JsonKey(name: r'description_it', required: false, includeIfNull: false)
  final String? descriptionIt;

  /// Use for custom sort order.
  // minimum: 0
  // maximum: 2147483647
  @JsonKey(name: r'number', required: false, includeIfNull: false)
  final int? number;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  @JsonKey(name: r'site_url_de', required: false, includeIfNull: false)
  final String? siteUrlDe;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  @JsonKey(name: r'site_url_en', required: false, includeIfNull: false)
  final String? siteUrlEn;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  @JsonKey(name: r'site_url_fr', required: false, includeIfNull: false)
  final String? siteUrlFr;

  /// Link to the product on your site. Required when using standalone QR codes (e.g. Print).
  @JsonKey(name: r'site_url_it', required: false, includeIfNull: false)
  final String? siteUrlIt;

  /// Let's the user scale the model in AR when enabled.
  @JsonKey(name: r'scaleable', required: false, includeIfNull: false)
  final bool? scaleable;

  /// Stock-keeping unit. The identfier of the product in external webstore.
  @JsonKey(name: r'sku', required: false, includeIfNull: false)
  final String? sku;

  /// Display price. The effective price is determined by the external webstore.
  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final double? price;

  @JsonKey(name: r'price_currency', required: false, includeIfNull: false)
  final String? priceCurrency;

  /// When set to true, users will be able to place the model on a vertical surface.
  @JsonKey(name: r'vertical_placement', required: false, includeIfNull: false)
  final bool? verticalPlacement;

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
      (nameDe == null ? 0 : nameDe.hashCode) +
      (nameEn == null ? 0 : nameEn.hashCode) +
      (nameFr == null ? 0 : nameFr.hashCode) +
      (nameIt == null ? 0 : nameIt.hashCode) +
      status.hashCode +
      description.hashCode +
      (descriptionDe == null ? 0 : descriptionDe.hashCode) +
      (descriptionEn == null ? 0 : descriptionEn.hashCode) +
      (descriptionFr == null ? 0 : descriptionFr.hashCode) +
      (descriptionIt == null ? 0 : descriptionIt.hashCode) +
      (number == null ? 0 : number.hashCode) +
      (siteUrlDe == null ? 0 : siteUrlDe.hashCode) +
      (siteUrlEn == null ? 0 : siteUrlEn.hashCode) +
      (siteUrlFr == null ? 0 : siteUrlFr.hashCode) +
      (siteUrlIt == null ? 0 : siteUrlIt.hashCode) +
      scaleable.hashCode +
      (sku == null ? 0 : sku.hashCode) +
      (price == null ? 0 : price.hashCode) +
      (priceCurrency == null ? 0 : priceCurrency.hashCode) +
      verticalPlacement.hashCode;

  factory PatchedModelUpdate.fromJson(Map<String, dynamic> json) => _$PatchedModelUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedModelUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
