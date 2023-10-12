// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileUpload _$FileUploadFromJson(Map<String, dynamic> json) => $checkedCreate(
      'FileUpload',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['file_url'],
        );
        final val = FileUpload(
          fileUrl: $checkedConvert('file_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'fileUrl': 'file_url'},
    );

Map<String, dynamic> _$FileUploadToJson(FileUpload instance) =>
    <String, dynamic>{
      'file_url': instance.fileUrl,
    };
