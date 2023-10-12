// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderUpdate _$OrderUpdateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OrderUpdate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['price'],
        );
        final val = OrderUpdate(
          price: $checkedConvert('price', (v) => (v as num).toDouble()),
          priceCurrency: $checkedConvert('price_currency',
              (v) => $enumDecodeNullable(_$PriceCurrencyEnumEnumMap, v)),
        );
        return val;
      },
      fieldKeyMap: const {'priceCurrency': 'price_currency'},
    );

Map<String, dynamic> _$OrderUpdateToJson(OrderUpdate instance) {
  final val = <String, dynamic>{
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'price_currency', _$PriceCurrencyEnumEnumMap[instance.priceCurrency]);
  return val;
}

const _$PriceCurrencyEnumEnumMap = {
  PriceCurrencyEnum.CHF: 'CHF',
  PriceCurrencyEnum.EUR: 'EUR',
  PriceCurrencyEnum.GBP: 'GBP',
  PriceCurrencyEnum.USD: 'USD',
};
