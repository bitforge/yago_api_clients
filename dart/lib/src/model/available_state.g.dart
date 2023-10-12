// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AvailableState _$AvailableStateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AvailableState',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['action', 'target'],
        );
        final val = AvailableState(
          action: $checkedConvert('action', (v) => v as String),
          target: $checkedConvert('target', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$AvailableStateToJson(AvailableState instance) =>
    <String, dynamic>{
      'action': instance.action,
      'target': instance.target,
    };
