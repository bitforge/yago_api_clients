//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Subscription {
  /// Returns a new [Subscription] instance.
  Subscription({
    this.paymentMethod,
    this.plan,
    this.billingAddress,
    @required this.stripeSubscription,
  });

  PaymentMethodEnum paymentMethod;

  /// Defines the number of available models and AR views. <a href=\"mailto:info@bitforge.ch\">Contact us</a> to upgrade your plan.
  String plan;

  String billingAddress;

  StripeSubscription stripeSubscription;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Subscription &&
     other.paymentMethod == paymentMethod &&
     other.plan == plan &&
     other.billingAddress == billingAddress &&
     other.stripeSubscription == stripeSubscription;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (paymentMethod == null ? 0 : paymentMethod.hashCode) +
    (plan == null ? 0 : plan.hashCode) +
    (billingAddress == null ? 0 : billingAddress.hashCode) +
    (stripeSubscription == null ? 0 : stripeSubscription.hashCode);

  @override
  String toString() => 'Subscription[paymentMethod=$paymentMethod, plan=$plan, billingAddress=$billingAddress, stripeSubscription=$stripeSubscription]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (paymentMethod != null) {
      json[r'payment_method'] = paymentMethod;
    }
    if (plan != null) {
      json[r'plan'] = plan;
    }
    if (billingAddress != null) {
      json[r'billing_address'] = billingAddress;
    }
      json[r'stripe_subscription'] = stripeSubscription;
    return json;
  }

  /// Returns a new [Subscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Subscription fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return Subscription(
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method']),
        plan: mapValueOfType<String>(json, r'plan'),
        billingAddress: mapValueOfType<String>(json, r'billing_address'),
        stripeSubscription: StripeSubscription.fromJson(json[r'stripe_subscription']),
      );
    }
    return null;
  }

  static List<Subscription> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(Subscription.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <Subscription>[];

  static Map<String, Subscription> mapFromJson(dynamic json) {
    final map = <String, Subscription>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = Subscription.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Subscription-objects as value to a dart map
  static Map<String, List<Subscription>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Subscription>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = Subscription.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

