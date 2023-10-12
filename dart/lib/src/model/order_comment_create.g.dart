// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_comment_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCommentCreate _$OrderCommentCreateFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OrderCommentCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['comment'],
        );
        final val = OrderCommentCreate(
          comment: $checkedConvert('comment', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$OrderCommentCreateToJson(OrderCommentCreate instance) =>
    <String, dynamic>{
      'comment': instance.comment,
    };
