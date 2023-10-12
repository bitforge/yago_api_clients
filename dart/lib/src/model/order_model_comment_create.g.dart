// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model_comment_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderModelCommentCreate _$OrderModelCommentCreateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderModelCommentCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['comment'],
        );
        final val = OrderModelCommentCreate(
          comment: $checkedConvert('comment', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrderModelCommentCreateToJson(
        OrderModelCommentCreate instance) =>
    <String, dynamic>{
      'comment': instance.comment,
    };
