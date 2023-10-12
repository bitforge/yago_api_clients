// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_subscription_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewSubscriptionCreate _$NewSubscriptionCreateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NewSubscriptionCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['plan', 'payment_method', 'tos_accepted'],
        );
        final val = NewSubscriptionCreate(
          plan: $checkedConvert('plan', (v) => v as String),
          paymentMethod: $checkedConvert('payment_method',
              (v) => $enumDecode(_$PaymentMethodEnumEnumMap, v)),
          tosAccepted: $checkedConvert('tos_accepted', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'paymentMethod': 'payment_method',
        'tosAccepted': 'tos_accepted'
      },
    );

Map<String, dynamic> _$NewSubscriptionCreateToJson(
        NewSubscriptionCreate instance) =>
    <String, dynamic>{
      'plan': instance.plan,
      'payment_method': _$PaymentMethodEnumEnumMap[instance.paymentMethod]!,
      'tos_accepted': instance.tosAccepted,
    };

const _$PaymentMethodEnumEnumMap = {
  PaymentMethodEnum.NONE: 'NONE',
  PaymentMethodEnum.STRIPE: 'STRIPE',
  PaymentMethodEnum.BILL: 'BILL',
};
