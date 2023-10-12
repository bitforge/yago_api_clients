// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewSubscription _$NewSubscriptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'NewSubscription',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['plan', 'payment_method', 'tos_accepted'],
        );
        final val = NewSubscription(
          plan: $checkedConvert('plan', (v) => v as String),
          paymentMethod: $checkedConvert('payment_method',
              (v) => $enumDecode(_$PaymentMethodEnumEnumMap, v)),
          tosAccepted: $checkedConvert('tos_accepted', (v) => v as bool),
          customerId: $checkedConvert('customer_id', (v) => v as String?),
          subscriptionId:
              $checkedConvert('subscription_id', (v) => v as String?),
          clientSecret: $checkedConvert('client_secret', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'paymentMethod': 'payment_method',
        'tosAccepted': 'tos_accepted',
        'customerId': 'customer_id',
        'subscriptionId': 'subscription_id',
        'clientSecret': 'client_secret'
      },
    );

Map<String, dynamic> _$NewSubscriptionToJson(NewSubscription instance) {
  final val = <String, dynamic>{
    'plan': instance.plan,
    'payment_method': _$PaymentMethodEnumEnumMap[instance.paymentMethod]!,
    'tos_accepted': instance.tosAccepted,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_id', instance.customerId);
  writeNotNull('subscription_id', instance.subscriptionId);
  writeNotNull('client_secret', instance.clientSecret);
  return val;
}

const _$PaymentMethodEnumEnumMap = {
  PaymentMethodEnum.NONE: 'NONE',
  PaymentMethodEnum.STRIPE: 'STRIPE',
  PaymentMethodEnum.BILL: 'BILL',
};
