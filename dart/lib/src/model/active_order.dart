//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/order_state.dart';
import 'package:json_annotation/json_annotation.dart';

part 'active_order.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ActiveOrder {
  /// Returns a new [ActiveOrder] instance.
  ActiveOrder({
    required this.id,
    required this.state,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final int id;

  @JsonKey(name: r'state', required: true, includeIfNull: false)
  final OrderState state;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ActiveOrder && other.id == id && other.state == state;

  @override
  int get hashCode => id.hashCode + state.hashCode;

  factory ActiveOrder.fromJson(Map<String, dynamic> json) => _$ActiveOrderFromJson(json);

  Map<String, dynamic> toJson() => _$ActiveOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
