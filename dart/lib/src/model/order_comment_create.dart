//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_comment_create.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderCommentCreate {
  /// Returns a new [OrderCommentCreate] instance.
  OrderCommentCreate({
    required this.comment,
  });

  @JsonKey(name: r'comment', required: true, includeIfNull: false)
  final String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrderCommentCreate && other.comment == comment;

  @override
  int get hashCode => comment.hashCode;

  factory OrderCommentCreate.fromJson(Map<String, dynamic> json) => _$OrderCommentCreateFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCommentCreateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
