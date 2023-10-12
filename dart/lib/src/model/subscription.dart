//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/payment_method_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Subscription {
  /// Returns a new [Subscription] instance.
  Subscription({
    this.paymentMethod,
    this.plan,
    this.billingAddress,
  });

  @JsonKey(name: r'payment_method', required: false, includeIfNull: false)
  final PaymentMethodEnum? paymentMethod;

  /// Defines the number of available models and AR views. <a href=\"mailto:info@bitforge.ch\">Contact us</a> to upgrade your plan.
  @JsonKey(name: r'plan', required: false, includeIfNull: false)
  final String? plan;

  @JsonKey(name: r'billing_address', required: false, includeIfNull: false)
  final String? billingAddress;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Subscription &&
          other.paymentMethod == paymentMethod &&
          other.plan == plan &&
          other.billingAddress == billingAddress;

  @override
  int get hashCode =>
      paymentMethod.hashCode +
      (plan == null ? 0 : plan.hashCode) +
      (billingAddress == null ? 0 : billingAddress.hashCode);

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
