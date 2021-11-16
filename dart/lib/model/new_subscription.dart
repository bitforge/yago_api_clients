//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewSubscription {
  /// Returns a new [NewSubscription] instance.
  NewSubscription({
    @required this.plan,
    @required this.paymentMethod,
    @required this.tosAccepted,
    @required this.customerId,
    @required this.subscriptionId,
    @required this.clientSecret,
  });

  PlanEnum plan;

  PaymentMethodEnum paymentMethod;

  bool tosAccepted;

  String customerId;

  String subscriptionId;

  String clientSecret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewSubscription &&
     other.plan == plan &&
     other.paymentMethod == paymentMethod &&
     other.tosAccepted == tosAccepted &&
     other.customerId == customerId &&
     other.subscriptionId == subscriptionId &&
     other.clientSecret == clientSecret;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (plan == null ? 0 : plan.hashCode) +
    (paymentMethod == null ? 0 : paymentMethod.hashCode) +
    (tosAccepted == null ? 0 : tosAccepted.hashCode) +
    (customerId == null ? 0 : customerId.hashCode) +
    (subscriptionId == null ? 0 : subscriptionId.hashCode) +
    (clientSecret == null ? 0 : clientSecret.hashCode);

  @override
  String toString() => 'NewSubscription[plan=$plan, paymentMethod=$paymentMethod, tosAccepted=$tosAccepted, customerId=$customerId, subscriptionId=$subscriptionId, clientSecret=$clientSecret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'plan'] = plan;
      json[r'payment_method'] = paymentMethod;
      json[r'tos_accepted'] = tosAccepted;
      json[r'customer_id'] = customerId;
      json[r'subscription_id'] = subscriptionId;
      json[r'client_secret'] = clientSecret;
    return json;
  }

  /// Returns a new [NewSubscription] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewSubscription fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return NewSubscription(
        plan: PlanEnum.fromJson(json[r'plan']),
        paymentMethod: PaymentMethodEnum.fromJson(json[r'payment_method']),
        tosAccepted: mapValueOfType<bool>(json, r'tos_accepted'),
        customerId: mapValueOfType<String>(json, r'customer_id'),
        subscriptionId: mapValueOfType<String>(json, r'subscription_id'),
        clientSecret: mapValueOfType<String>(json, r'client_secret'),
      );
    }
    return null;
  }

  static List<NewSubscription> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(NewSubscription.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <NewSubscription>[];

  static Map<String, NewSubscription> mapFromJson(dynamic json) {
    final map = <String, NewSubscription>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = NewSubscription.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewSubscription-objects as value to a dart map
  static Map<String, List<NewSubscription>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewSubscription>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = NewSubscription.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

