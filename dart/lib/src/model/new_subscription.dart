//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:yago_cloud/src/model/payment_method_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_subscription.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NewSubscription {
  /// Returns a new [NewSubscription] instance.
  NewSubscription({
    required this.plan,
    required this.paymentMethod,
    required this.tosAccepted,
    this.customerId,
    this.subscriptionId,
    this.clientSecret,
  });

  @JsonKey(name: r'plan', required: true, includeIfNull: false)
  final String plan;

  @JsonKey(name: r'payment_method', required: true, includeIfNull: false)
  final PaymentMethodEnum paymentMethod;

  @JsonKey(name: r'tos_accepted', required: true, includeIfNull: false)
  final bool tosAccepted;

  @JsonKey(name: r'customer_id', required: false, includeIfNull: false)
  final String? customerId;

  @JsonKey(name: r'subscription_id', required: false, includeIfNull: false)
  final String? subscriptionId;

  @JsonKey(name: r'client_secret', required: false, includeIfNull: false)
  final String? clientSecret;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewSubscription &&
          other.plan == plan &&
          other.paymentMethod == paymentMethod &&
          other.tosAccepted == tosAccepted &&
          other.customerId == customerId &&
          other.subscriptionId == subscriptionId &&
          other.clientSecret == clientSecret;

  @override
  int get hashCode =>
      plan.hashCode +
      paymentMethod.hashCode +
      tosAccepted.hashCode +
      customerId.hashCode +
      subscriptionId.hashCode +
      clientSecret.hashCode;

  factory NewSubscription.fromJson(Map<String, dynamic> json) => _$NewSubscriptionFromJson(json);

  Map<String, dynamic> toJson() => _$NewSubscriptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
