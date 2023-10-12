//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'order_model_file.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OrderModelFile {
  /// Returns a new [OrderModelFile] instance.
  OrderModelFile({
    required this.id,
    required this.name,
    required this.file,
    required this.created,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @JsonKey(name: r'file', required: true, includeIfNull: false)
  final String file;

  @JsonKey(name: r'created', required: true, includeIfNull: false)
  final DateTime created;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OrderModelFile && other.id == id && other.name == name && other.file == file && other.created == created;

  @override
  int get hashCode => id.hashCode + name.hashCode + file.hashCode + created.hashCode;

  factory OrderModelFile.fromJson(Map<String, dynamic> json) => _$OrderModelFileFromJson(json);

  Map<String, dynamic> toJson() => _$OrderModelFileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
