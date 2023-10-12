//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/price_currency_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'order_update.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderUpdate {
  /// Returns a new [OrderUpdate] instance.
  OrderUpdate({
    required this.price,
    this.priceCurrency,
  });

  @JsonKey(name: r'price', required: true, includeIfNull: false)
  final double price;

  @JsonKey(name: r'price_currency', required: false, includeIfNull: false)
  final PriceCurrencyEnum? priceCurrency;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OrderUpdate && other.price == price && other.priceCurrency == priceCurrency;

  @override
  int get hashCode => price.hashCode + priceCurrency.hashCode;

  factory OrderUpdate.fromJson(Map<String, dynamic> json) => _$OrderUpdateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderUpdateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
