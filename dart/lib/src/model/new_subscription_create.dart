//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/payment_method_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_subscription_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NewSubscriptionCreate {
  /// Returns a new [NewSubscriptionCreate] instance.
  NewSubscriptionCreate({
    required this.plan,
    required this.paymentMethod,
    required this.tosAccepted,
  });

  @JsonKey(name: r'plan', required: true, includeIfNull: false)
  final String plan;

  @JsonKey(name: r'payment_method', required: true, includeIfNull: false)
  final PaymentMethodEnum paymentMethod;

  @JsonKey(name: r'tos_accepted', required: true, includeIfNull: false)
  final bool tosAccepted;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewSubscriptionCreate &&
          other.plan == plan &&
          other.paymentMethod == paymentMethod &&
          other.tosAccepted == tosAccepted;

  @override
  int get hashCode => plan.hashCode + paymentMethod.hashCode + tosAccepted.hashCode;

  factory NewSubscriptionCreate.fromJson(Map<String, dynamic> json) => _$NewSubscriptionCreateFromJson(json);

  Map<String, dynamic> toJson() => _$NewSubscriptionCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
