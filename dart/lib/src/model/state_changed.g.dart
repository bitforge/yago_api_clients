// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state_changed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StateChanged _$StateChangedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StateChanged',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['old_state', 'new_state', 'modified'],
        );
        final val = StateChanged(
          oldState: $checkedConvert('old_state', (v) => v as String),
          newState: $checkedConvert('new_state', (v) => v as String),
          modified:
              $checkedConvert('modified', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'oldState': 'old_state', 'newState': 'new_state'},
    );

Map<String, dynamic> _$StateChangedToJson(StateChanged instance) =>
    <String, dynamic>{
      'old_state': instance.oldState,
      'new_state': instance.newState,
      'modified': instance.modified.toIso8601String(),
    };
