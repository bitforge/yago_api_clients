//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/model_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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
    this.arbuttonConfig = {},
    required this.created,
    required this.modified,
    this.verticalPlacement,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// The project this model belongs to. Cannot be changed once created.
  @JsonKey(name: r'project', required: true, includeIfNull: false)
  final String project;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

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

  /// Unique Short-URL for embedding. Cannot be changed once created.
  @JsonKey(name: r'slug', required: false, includeIfNull: false)
  final String? slug;

  /// Preview image of the model (iOS, gallery, sharing, SEO).
  @JsonKey(name: r'image', required: false, includeIfNull: false)
  final String? image;

  @JsonKey(defaultValue: '', name: r'image_thumb', required: false, includeIfNull: false)
  final String? imageThumb;

  @JsonKey(defaultValue: '', name: r'image_preview', required: false, includeIfNull: false)
  final String? imagePreview;

  /// True when model is in order and work is still in progress. False when order is completed.
  @JsonKey(name: r'preview', required: false, includeIfNull: false)
  final bool? preview;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final ModelStatus? status;

  @JsonKey(defaultValue: '', name: r'description', required: false, includeIfNull: false)
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

  @JsonKey(defaultValue: '', name: r'site_url', required: false, includeIfNull: false)
  final String? siteUrl;

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

  /// Stock-keeping unit. The identfier of the product in external webstore.
  @JsonKey(name: r'sku', required: false, includeIfNull: false)
  final String? sku;

  /// Display price. The effective price is determined by the external webstore.
  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final double? price;

  @JsonKey(defaultValue: 'CHF', name: r'price_currency', required: false, includeIfNull: false)
  final String? priceCurrency;

  /// Let's the user scale the model in AR when enabled.
  @JsonKey(name: r'scaleable', required: false, includeIfNull: false)
  final bool? scaleable;

  /// Must be a binary glTF file according to the Khronos Group standard.
  @JsonKey(name: r'glb', required: false, includeIfNull: false)
  final String? glb;

  /// Must be a USDZ or Reality Composer file.
  @JsonKey(name: r'usdz', required: false, includeIfNull: false)
  final String? usdz;

  /// Source of 3D Model (Blender, Maya, Cinema 4D, CAD etc,). Use archive for multiple files.
  @JsonKey(name: r'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(defaultValue: {}, name: r'arbutton_config', required: false, includeIfNull: false)
  final Map<String, Object>? arbuttonConfig;

  @JsonKey(name: r'created', required: true, includeIfNull: false)
  final DateTime created;

  @JsonKey(name: r'modified', required: true, includeIfNull: false)
  final DateTime modified;

  /// When set to true, users will be able to place the model on a vertical surface.
  @JsonKey(name: r'vertical_placement', required: false, includeIfNull: false)
  final bool? verticalPlacement;

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
      id.hashCode +
      project.hashCode +
      name.hashCode +
      (nameDe == null ? 0 : nameDe.hashCode) +
      (nameEn == null ? 0 : nameEn.hashCode) +
      (nameFr == null ? 0 : nameFr.hashCode) +
      (nameIt == null ? 0 : nameIt.hashCode) +
      slug.hashCode +
      (image == null ? 0 : image.hashCode) +
      imageThumb.hashCode +
      imagePreview.hashCode +
      preview.hashCode +
      status.hashCode +
      description.hashCode +
      (descriptionDe == null ? 0 : descriptionDe.hashCode) +
      (descriptionEn == null ? 0 : descriptionEn.hashCode) +
      (descriptionFr == null ? 0 : descriptionFr.hashCode) +
      (descriptionIt == null ? 0 : descriptionIt.hashCode) +
      (number == null ? 0 : number.hashCode) +
      siteUrl.hashCode +
      (siteUrlDe == null ? 0 : siteUrlDe.hashCode) +
      (siteUrlEn == null ? 0 : siteUrlEn.hashCode) +
      (siteUrlFr == null ? 0 : siteUrlFr.hashCode) +
      (siteUrlIt == null ? 0 : siteUrlIt.hashCode) +
      (sku == null ? 0 : sku.hashCode) +
      (price == null ? 0 : price.hashCode) +
      priceCurrency.hashCode +
      scaleable.hashCode +
      (glb == null ? 0 : glb.hashCode) +
      (usdz == null ? 0 : usdz.hashCode) +
      (model == null ? 0 : model.hashCode) +
      arbuttonConfig.hashCode +
      created.hashCode +
      modified.hashCode +
      verticalPlacement.hashCode;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
