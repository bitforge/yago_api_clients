//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'file_uploaded.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FileUploaded {
  /// Returns a new [FileUploaded] instance.
  FileUploaded({
    required this.fileUrl,
  });

  @JsonKey(name: r'file_url', required: true, includeIfNull: false)
  final String fileUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileUploaded && other.fileUrl == fileUrl;

  @override
  int get hashCode => fileUrl.hashCode;

  factory FileUploaded.fromJson(Map<String, dynamic> json) => _$FileUploadedFromJson(json);

  Map<String, dynamic> toJson() => _$FileUploadedToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
