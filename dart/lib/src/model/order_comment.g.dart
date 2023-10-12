// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderComment _$OrderCommentFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderComment',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['yago_team', 'user_name', 'date', 'comment'],
        );
        final val = OrderComment(
          yagoTeam: $checkedConvert('yago_team', (v) => v as bool),
          userName: $checkedConvert('user_name', (v) => v as String),
          date: $checkedConvert('date', (v) => DateTime.parse(v as String)),
          comment: $checkedConvert('comment', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'yagoTeam': 'yago_team', 'userName': 'user_name'},
    );

Map<String, dynamic> _$OrderCommentToJson(OrderComment instance) =>
    <String, dynamic>{
      'yago_team': instance.yagoTeam,
      'user_name': instance.userName,
      'date': instance.date.toIso8601String(),
      'comment': instance.comment,
    };
