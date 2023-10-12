//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'model_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ModelCreate {
  /// Returns a new [ModelCreate] instance.
  ModelCreate({
    required this.id,
    required this.project,
    this.nameDe,
    this.nameEn,
    this.nameFr,
    this.nameIt,
    required this.slug,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// The project this model belongs to. Cannot be changed once created.
  @JsonKey(name: r'project', required: true, includeIfNull: false)
  final String project;

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
  @JsonKey(name: r'slug', required: true, includeIfNull: false)
  final String slug;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ModelCreate &&
          other.id == id &&
          other.project == project &&
          other.nameDe == nameDe &&
          other.nameEn == nameEn &&
          other.nameFr == nameFr &&
          other.nameIt == nameIt &&
          other.slug == slug;

  @override
  int get hashCode =>
      id.hashCode +
      project.hashCode +
      (nameDe == null ? 0 : nameDe.hashCode) +
      (nameEn == null ? 0 : nameEn.hashCode) +
      (nameFr == null ? 0 : nameFr.hashCode) +
      (nameIt == null ? 0 : nameIt.hashCode) +
      slug.hashCode;

  factory ModelCreate.fromJson(Map<String, dynamic> json) => _$ModelCreateFromJson(json);

  Map<String, dynamic> toJson() => _$ModelCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
