//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/active_order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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
    this.orders,
    this.arbuttonConfig,
    required this.created,
    required this.modified,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Name will be visible as title in gallery.
  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// Will be part of asset urls. Cannot be changed once created.
  @JsonKey(name: r'slug', required: false, includeIfNull: false)
  final String? slug;

  @JsonKey(defaultValue: '', name: r'customer_name', required: false, includeIfNull: false)
  final String? customerName;

  /// Image will be visible in gallery.
  @JsonKey(name: r'image', required: false, includeIfNull: false)
  final String? image;

  @JsonKey(defaultValue: '', name: r'image_thumb', required: false, includeIfNull: false)
  final String? imageThumb;

  @JsonKey(defaultValue: '', name: r'image_preview', required: false, includeIfNull: false)
  final String? imagePreview;

  @JsonKey(name: r'website', required: false, includeIfNull: false)
  final String? website;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  /// Activates a publicly available gallery with all project models in state READY or ONLINE.
  @JsonKey(name: r'gallery', required: false, includeIfNull: false)
  final bool? gallery;

  @JsonKey(name: r'translations_de', required: false, includeIfNull: false)
  final bool? translationsDe;

  @JsonKey(name: r'translations_en', required: false, includeIfNull: false)
  final bool? translationsEn;

  @JsonKey(name: r'translations_fr', required: false, includeIfNull: false)
  final bool? translationsFr;

  @JsonKey(name: r'translations_it', required: false, includeIfNull: false)
  final bool? translationsIt;

  /// Enable urls to the product on your site. Required when using standalone QR codes (e.g. Print).
  @JsonKey(name: r'backlink_urls', required: false, includeIfNull: false)
  final bool? backlinkUrls;

  @JsonKey(name: r'orders', required: false, includeIfNull: false)
  final List<ActiveOrder>? orders;

  @JsonKey(name: r'arbutton_config', required: false, includeIfNull: false)
  final Map<String, Object>? arbuttonConfig;

  @JsonKey(name: r'created', required: true, includeIfNull: false)
  final DateTime created;

  @JsonKey(name: r'modified', required: true, includeIfNull: false)
  final DateTime modified;

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
          other.orders == orders &&
          other.arbuttonConfig == arbuttonConfig &&
          other.created == created &&
          other.modified == modified;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      slug.hashCode +
      customerName.hashCode +
      (image == null ? 0 : image.hashCode) +
      imageThumb.hashCode +
      imagePreview.hashCode +
      (website == null ? 0 : website.hashCode) +
      (description == null ? 0 : description.hashCode) +
      gallery.hashCode +
      translationsDe.hashCode +
      translationsEn.hashCode +
      translationsFr.hashCode +
      translationsIt.hashCode +
      backlinkUrls.hashCode +
      orders.hashCode +
      (arbuttonConfig == null ? 0 : arbuttonConfig.hashCode) +
      created.hashCode +
      modified.hashCode;

  factory Project.fromJson(Map<String, dynamic> json) => _$ProjectFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
