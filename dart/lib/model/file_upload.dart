//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FileUpload {
  /// Returns a new [FileUpload] instance.
  FileUpload({
    @required this.fileUrl,
  });

  String fileUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileUpload &&
     other.fileUrl == fileUrl;

  @override
  int get hashCode =>
  // ignore: unnecessary_parenthesis
    (fileUrl == null ? 0 : fileUrl.hashCode);

  @override
  String toString() => 'FileUpload[fileUrl=$fileUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'file_url'] = fileUrl;
    return json;
  }

  /// Returns a new [FileUpload] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileUpload fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();
      return FileUpload(
        fileUrl: mapValueOfType<String>(json, r'file_url'),
      );
    }
    return null;
  }

  static List<FileUpload> listFromJson(dynamic json, {bool emptyIsNull, bool growable,}) =>
    json is List && json.isNotEmpty
      ? json.map(FileUpload.fromJson).toList(growable: true == growable)
      : true == emptyIsNull ? null : <FileUpload>[];

  static Map<String, FileUpload> mapFromJson(dynamic json) {
    final map = <String, FileUpload>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) => map[key] = FileUpload.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of FileUpload-objects as value to a dart map
  static Map<String, List<FileUpload>> mapListFromJson(dynamic json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<FileUpload>>{};
    if (json is Map && json.isNotEmpty) {
      json
        .cast<String, dynamic>()
        .forEach((key, dynamic value) {
          map[key] = FileUpload.listFromJson(
            value,
            emptyIsNull: emptyIsNull,
            growable: growable,
          );
        });
    }
    return map;
  }
}

