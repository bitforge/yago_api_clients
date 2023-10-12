// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Customer',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'name', 'slug'],
        );
        final val = Customer(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          plan: $checkedConvert('plan', (v) => v as String?),
          slug: $checkedConvert('slug', (v) => v as String),
          image: $checkedConvert('image', (v) => v as String?),
          imageThumb: $checkedConvert('image_thumb', (v) => v as String? ?? ''),
          imagePreview:
              $checkedConvert('image_preview', (v) => v as String? ?? ''),
          website: $checkedConvert('website', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          contactAddress:
              $checkedConvert('contact_address', (v) => v as String?),
          billingAddress:
              $checkedConvert('billing_address', (v) => v as String?),
          paymentMethod: $checkedConvert('payment_method',
              (v) => $enumDecodeNullable(_$PaymentMethodEnumEnumMap, v)),
          modelsCount: $checkedConvert('models_count', (v) => v as int? ?? 0),
        );
        return val;
      },
      fieldKeyMap: const {
        'imageThumb': 'image_thumb',
        'imagePreview': 'image_preview',
        'contactAddress': 'contact_address',
        'billingAddress': 'billing_address',
        'paymentMethod': 'payment_method',
        'modelsCount': 'models_count'
      },
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('plan', instance.plan);
  val['slug'] = instance.slug;
  writeNotNull('image', instance.image);
  writeNotNull('image_thumb', instance.imageThumb);
  writeNotNull('image_preview', instance.imagePreview);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('contact_address', instance.contactAddress);
  writeNotNull('billing_address', instance.billingAddress);
  writeNotNull(
      'payment_method', _$PaymentMethodEnumEnumMap[instance.paymentMethod]);
  writeNotNull('models_count', instance.modelsCount);
  return val;
}

const _$PaymentMethodEnumEnumMap = {
  PaymentMethodEnum.NONE: 'NONE',
  PaymentMethodEnum.STRIPE: 'STRIPE',
  PaymentMethodEnum.BILL: 'BILL',
};
