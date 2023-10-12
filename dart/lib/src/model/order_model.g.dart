// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModel _$OrderModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OrderModel',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'id',
            'name',
            'order',
            'state',
            'model',
            'created',
            'modified'
          ],
        );
        final val = OrderModel(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          order: $checkedConvert('order', (v) => v as int),
          state: $checkedConvert(
              'state', (v) => $enumDecode(_$OrderStateEnumMap, v)),
          website: $checkedConvert('website', (v) => v as String?),
          widthMm: $checkedConvert('width_mm', (v) => (v as num?)?.toDouble()),
          heightMm:
              $checkedConvert('height_mm', (v) => (v as num?)?.toDouble()),
          depthMm: $checkedConvert('depth_mm', (v) => (v as num?)?.toDouble()),
          model: $checkedConvert('model', (v) => v as String?),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
          modified:
              $checkedConvert('modified', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'widthMm': 'width_mm',
        'heightMm': 'height_mm',
        'depthMm': 'depth_mm'
      },
    );

Map<String, dynamic> _$OrderModelToJson(OrderModel instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
    'order': instance.order,
    'state': _$OrderStateEnumMap[instance.state]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('website', instance.website);
  writeNotNull('width_mm', instance.widthMm);
  writeNotNull('height_mm', instance.heightMm);
  writeNotNull('depth_mm', instance.depthMm);
  writeNotNull('model', instance.model);
  val['created'] = instance.created.toIso8601String();
  val['modified'] = instance.modified.toIso8601String();
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
