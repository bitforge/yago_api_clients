// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModelUpdate _$OrderModelUpdateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderModelUpdate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['name'],
        );
        final val = OrderModelUpdate(
          name: $checkedConvert('name', (v) => v as String),
          website: $checkedConvert('website', (v) => v as String?),
          widthMm: $checkedConvert('width_mm', (v) => (v as num?)?.toDouble()),
          heightMm:
              $checkedConvert('height_mm', (v) => (v as num?)?.toDouble()),
          depthMm: $checkedConvert('depth_mm', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
      fieldKeyMap: const {
        'widthMm': 'width_mm',
        'heightMm': 'height_mm',
        'depthMm': 'depth_mm'
      },
    );

Map<String, dynamic> _$OrderModelUpdateToJson(OrderModelUpdate instance) {
  final val = <String, dynamic>{
    'name': instance.name,
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
  return val;
}
