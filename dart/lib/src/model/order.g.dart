// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Order',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'project',
            'state',
            'price_currency',
            'created',
            'modified',
            'model_count'
          ],
        );
        final val = Order(
          id: $checkedConvert('id', (v) => v as int),
          project: $checkedConvert('project', (v) => v as String),
          state: $checkedConvert(
              'state', (v) => $enumDecode(_$OrderStateEnumMap, v)),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          priceCurrency: $checkedConvert('price_currency', (v) => v as String?),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
          modified:
              $checkedConvert('modified', (v) => DateTime.parse(v as String)),
          modelCount: $checkedConvert('model_count', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'priceCurrency': 'price_currency',
        'modelCount': 'model_count'
      },
    );

Map<String, dynamic> _$OrderToJson(Order instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'project': instance.project,
    'state': _$OrderStateEnumMap[instance.state]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('price_currency', instance.priceCurrency);
  val['created'] = instance.created.toIso8601String();
  val['modified'] = instance.modified.toIso8601String();
  val['model_count'] = instance.modelCount;
  return val;
}

const _$OrderStateEnumMap = {
  OrderState.PREPARING: 'PREPARING',
  OrderState.ESTIMATING: 'ESTIMATING',
  OrderState.READY_TO_PAY: 'READY_TO_PAY',
  OrderState.IN_PROGRESS: 'IN_PROGRESS',
  OrderState.IN_REVIEW: 'IN_REVIEW',
  OrderState.FINISHED: 'FINISHED',
  OrderState.RAGE_QUIT: 'RAGE_QUIT',
};
