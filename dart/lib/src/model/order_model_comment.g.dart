// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModelComment _$OrderModelCommentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderModelComment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['yago_team', 'user_name', 'date', 'comment'],
        );
        final val = OrderModelComment(
          yagoTeam: $checkedConvert('yago_team', (v) => v as bool),
          userName: $checkedConvert('user_name', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          comment: $checkedConvert('comment', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'yagoTeam': 'yago_team', 'userName': 'user_name'},
    );

Map<String, dynamic> _$OrderModelCommentToJson(OrderModelComment instance) =>
    <String, dynamic>{
      'yago_team': instance.yagoTeam,
      'user_name': instance.userName,
      'date': instance.date.toIso8601String(),
      'comment': instance.comment,
    };
