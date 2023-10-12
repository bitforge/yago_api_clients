// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCreate _$OrderCreateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'OrderCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['project'],
        );
        final val = OrderCreate(
          project: $checkedConvert('project', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrderCreateToJson(OrderCreate instance) =>
    <String, dynamic>{
      'project': instance.project,
    };
