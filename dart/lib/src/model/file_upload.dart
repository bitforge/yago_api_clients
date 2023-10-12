//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'file_upload.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FileUpload {
  /// Returns a new [FileUpload] instance.
  FileUpload({
    required this.fileUrl,
  });

  @JsonKey(name: r'file_url', required: true, includeIfNull: false)
  final String fileUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileUpload && other.fileUrl == fileUrl;

  @override
  int get hashCode => fileUrl.hashCode;

  factory FileUpload.fromJson(Map<String, dynamic> json) => _$FileUploadFromJson(json);

  Map<String, dynamic> toJson() => _$FileUploadToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
