//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_model_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderModelCreate {
  /// Returns a new [OrderModelCreate] instance.
  OrderModelCreate({
    required this.name,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
  });

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'website', required: false, includeIfNull: false)
  final String? website;

  @JsonKey(name: r'width_mm', required: false, includeIfNull: false)
  final double? widthMm;

  @JsonKey(name: r'height_mm', required: false, includeIfNull: false)
  final double? heightMm;

  @JsonKey(name: r'depth_mm', required: false, includeIfNull: false)
  final double? depthMm;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModelCreate &&
          other.name == name &&
          other.website == website &&
          other.widthMm == widthMm &&
          other.heightMm == heightMm &&
          other.depthMm == depthMm;

  @override
  int get hashCode =>
      name.hashCode +
      (website == null ? 0 : website.hashCode) +
      (widthMm == null ? 0 : widthMm.hashCode) +
      (heightMm == null ? 0 : heightMm.hashCode) +
      (depthMm == null ? 0 : depthMm.hashCode);

  factory OrderModelCreate.fromJson(Map<String, dynamic> json) => _$OrderModelCreateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
