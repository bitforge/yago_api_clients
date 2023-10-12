//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/order_model.dart';
import 'package:yago_cloud/src/model/order_state.dart';
import 'package:yago_cloud/src/model/order_comment.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_detail.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderDetail {
  /// Returns a new [OrderDetail] instance.
  OrderDetail({
    required this.id,
    required this.project,
    required this.state,
    this.price,
    required this.priceCurrency,
    required this.created,
    required this.modified,
    required this.models,
    required this.comments,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final int id;

  @JsonKey(name: r'project', required: true, includeIfNull: false)
  final String project;

  @JsonKey(name: r'state', required: true, includeIfNull: false)
  final OrderState state;

  /// Estimation of order in CHF including taxes. Payment price for User before starting production.
  @JsonKey(name: r'price', required: false, includeIfNull: false)
  final double? price;

  @JsonKey(name: r'price_currency', required: true, includeIfNull: truefalse)
  final String? priceCurrency;

  @JsonKey(name: r'created', required: true, includeIfNull: false)
  final DateTime created;

  @JsonKey(name: r'modified', required: true, includeIfNull: false)
  final DateTime modified;

  @JsonKey(name: r'models', required: true, includeIfNull: false)
  final List<OrderModel> models;

  @JsonKey(name: r'comments', required: true, includeIfNull: false)
  final List<OrderComment> comments;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderDetail &&
          other.id == id &&
          other.project == project &&
          other.state == state &&
          other.price == price &&
          other.priceCurrency == priceCurrency &&
          other.created == created &&
          other.modified == modified &&
          other.models == models &&
          other.comments == comments;

  @override
  int get hashCode =>
      id.hashCode +
      project.hashCode +
      state.hashCode +
      (price == null ? 0 : price.hashCode) +
      (priceCurrency == null ? 0 : priceCurrency.hashCode) +
      created.hashCode +
      modified.hashCode +
      models.hashCode +
      comments.hashCode;

  factory OrderDetail.fromJson(Map<String, dynamic> json) => _$OrderDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OrderDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
