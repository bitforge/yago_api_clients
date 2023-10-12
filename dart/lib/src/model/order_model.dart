//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/order_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderModel {
  /// Returns a new [OrderModel] instance.
  OrderModel({
    required this.id,
    required this.name,
    required this.order,
    required this.state,
    this.website,
    this.widthMm,
    this.heightMm,
    this.depthMm,
    required this.model,
    required this.created,
    required this.modified,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final int id;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'order', required: true, includeIfNull: false)
  final int order;

  @JsonKey(name: r'state', required: true, includeIfNull: false)
  final OrderState state;

  @JsonKey(name: r'website', required: false, includeIfNull: false)
  final String? website;

  @JsonKey(name: r'width_mm', required: false, includeIfNull: false)
  final double? widthMm;

  @JsonKey(name: r'height_mm', required: false, includeIfNull: false)
  final double? heightMm;

  @JsonKey(name: r'depth_mm', required: false, includeIfNull: false)
  final double? depthMm;

  /// Resulting model after order is finished. Available when state is IN_PROGRESS.
  @JsonKey(name: r'model', required: true, includeIfNull: truefalse)
  final String? model;

  @JsonKey(name: r'created', required: true, includeIfNull: false)
  final DateTime created;

  @JsonKey(name: r'modified', required: true, includeIfNull: false)
  final DateTime modified;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModel &&
          other.id == id &&
          other.name == name &&
          other.order == order &&
          other.state == state &&
          other.website == website &&
          other.widthMm == widthMm &&
          other.heightMm == heightMm &&
          other.depthMm == depthMm &&
          other.model == model &&
          other.created == created &&
          other.modified == modified;

  @override
  int get hashCode =>
      id.hashCode +
      name.hashCode +
      order.hashCode +
      state.hashCode +
      (website == null ? 0 : website.hashCode) +
      (widthMm == null ? 0 : widthMm.hashCode) +
      (heightMm == null ? 0 : heightMm.hashCode) +
      (depthMm == null ? 0 : depthMm.hashCode) +
      (model == null ? 0 : model.hashCode) +
      created.hashCode +
      modified.hashCode;

  factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
