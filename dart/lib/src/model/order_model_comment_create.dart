//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_model_comment_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderModelCommentCreate {
  /// Returns a new [OrderModelCommentCreate] instance.
  OrderModelCommentCreate({
    required this.comment,
  });

  @JsonKey(name: r'comment', required: true, includeIfNull: false)
  final String comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is OrderModelCommentCreate && other.comment == comment;

  @override
  int get hashCode => comment.hashCode;

  factory OrderModelCommentCreate.fromJson(Map<String, dynamic> json) => _$OrderModelCommentCreateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelCommentCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
