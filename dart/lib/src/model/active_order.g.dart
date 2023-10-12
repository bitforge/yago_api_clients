// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveOrder _$ActiveOrderFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ActiveOrder',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'state'],
        );
        final val = ActiveOrder(
          id: $checkedConvert('id', (v) => v as int),
          state: $checkedConvert(
              'state', (v) => $enumDecode(_$OrderStateEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ActiveOrderToJson(ActiveOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': _$OrderStateEnumMap[instance.state]!,
    };

const _$OrderStateEnumMap = {
  OrderState.PREPARING: 'PREPARING',
  OrderState.ESTIMATING: 'ESTIMATING',
  OrderState.READY_TO_PAY: 'READY_TO_PAY',
  OrderState.IN_PROGRESS: 'IN_PROGRESS',
  OrderState.IN_REVIEW: 'IN_REVIEW',
  OrderState.FINISHED: 'FINISHED',
  OrderState.RAGE_QUIT: 'RAGE_QUIT',
};
