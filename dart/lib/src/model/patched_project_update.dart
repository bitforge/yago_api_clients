//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'patched_project_update.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
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
    this.arbuttonConfig,
  });

  /// Name will be visible as title in gallery.
  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'website', required: false, includeIfNull: false)
  final String? website;

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

  @JsonKey(name: r'arbutton_config', required: false, includeIfNull: false)
  final Map<String, Object>? arbuttonConfig;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatchedProjectUpdate &&
          other.name == name &&
          other.description == description &&
          other.website == website &&
          other.gallery == gallery &&
          other.translationsDe == translationsDe &&
          other.translationsEn == translationsEn &&
          other.translationsFr == translationsFr &&
          other.translationsIt == translationsIt &&
          other.backlinkUrls == backlinkUrls &&
          other.arbuttonConfig == arbuttonConfig;

  @override
  int get hashCode =>
      name.hashCode +
      (description == null ? 0 : description.hashCode) +
      (website == null ? 0 : website.hashCode) +
      gallery.hashCode +
      translationsDe.hashCode +
      translationsEn.hashCode +
      translationsFr.hashCode +
      translationsIt.hashCode +
      backlinkUrls.hashCode +
      (arbuttonConfig == null ? 0 : arbuttonConfig.hashCode);

  factory PatchedProjectUpdate.fromJson(Map<String, dynamic> json) => _$PatchedProjectUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$PatchedProjectUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
