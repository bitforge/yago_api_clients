// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OrderDetail',
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
            'models',
            'comments'
          ],
        );
        final val = OrderDetail(
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
          models: $checkedConvert(
              'models',
              (v) => (v as List<dynamic>)
                  .map((e) => OrderModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
          comments: $checkedConvert(
              'comments',
              (v) => (v as List<dynamic>)
                  .map((e) => OrderComment.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
      fieldKeyMap: const {'priceCurrency': 'price_currency'},
    );

Map<String, dynamic> _$OrderDetailToJson(OrderDetail instance) {
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
  val['models'] = instance.models.map((e) => e.toJson()).toList();
  val['comments'] = instance.comments.map((e) => e.toJson()).toList();
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
