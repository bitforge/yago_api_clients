// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModelFile _$OrderModelFileFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderModelFile',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'name', 'file', 'created'],
        );
        final val = OrderModelFile(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          file: $checkedConvert('file', (v) => v as String),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrderModelFileToJson(OrderModelFile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'file': instance.file,
      'created': instance.created.toIso8601String(),
    };
