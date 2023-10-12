//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/order_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Order {
  /// Returns a new [Order] instance.
  Order({
    required this.id,
    required this.project,
    required this.state,
    this.price,
    required this.priceCurrency,
    required this.created,
    required this.modified,
    required this.modelCount,
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

  /// Returns the number of Models this order has.
  @JsonKey(name: r'model_count', required: true, includeIfNull: false)
  final int modelCount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Order &&
          other.id == id &&
          other.project == project &&
          other.state == state &&
          other.price == price &&
          other.priceCurrency == priceCurrency &&
          other.created == created &&
          other.modified == modified &&
          other.modelCount == modelCount;

  @override
  int get hashCode =>
      id.hashCode +
      project.hashCode +
      state.hashCode +
      (price == null ? 0 : price.hashCode) +
      (priceCurrency == null ? 0 : priceCurrency.hashCode) +
      created.hashCode +
      modified.hashCode +
      modelCount.hashCode;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
