// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'Subscription',
      json,
      ($checkedConvert) {
        final val = Subscription(
          paymentMethod: $checkedConvert('payment_method',
              (v) => $enumDecodeNullable(_$PaymentMethodEnumEnumMap, v)),
          plan: $checkedConvert('plan', (v) => v as String?),
          billingAddress:
              $checkedConvert('billing_address', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'paymentMethod': 'payment_method',
        'billingAddress': 'billing_address'
      },
    );

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'payment_method', _$PaymentMethodEnumEnumMap[instance.paymentMethod]);
  writeNotNull('plan', instance.plan);
  writeNotNull('billing_address', instance.billingAddress);
  return val;
}

const _$PaymentMethodEnumEnumMap = {
  PaymentMethodEnum.NONE: 'NONE',
  PaymentMethodEnum.STRIPE: 'STRIPE',
  PaymentMethodEnum.BILL: 'BILL',
};
