//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_comment.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderComment {
  /// Returns a new [OrderComment] instance.
  OrderComment({
    required this.yagoTeam,
    required this.userName,
    required this.date,
    required this.comment,
  });

  @JsonKey(name: r'yago_team', required: true, includeIfNull: false)
  final bool yagoTeam;

  @JsonKey(name: r'user_name', required: true, includeIfNull: false)
  final String userName;

  @JsonKey(name: r'date', required: true, includeIfNull: false)
  final DateTime date;

  @JsonKey(name: r'comment', required: true, includeIfNull: false)
  final String comment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderComment &&
          other.yagoTeam == yagoTeam &&
          other.userName == userName &&
          other.date == date &&
          other.comment == comment;

  @override
  int get hashCode => yagoTeam.hashCode + userName.hashCode + date.hashCode + comment.hashCode;

  factory OrderComment.fromJson(Map<String, dynamic> json) => _$OrderCommentFromJson(json);

  Map<String, dynamic> toJson() => _$OrderCommentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
