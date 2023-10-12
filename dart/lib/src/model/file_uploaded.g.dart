// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_uploaded.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileUploaded _$FileUploadedFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'FileUploaded',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['file_url'],
        );
        final val = FileUploaded(
          fileUrl: $checkedConvert('file_url', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'fileUrl': 'file_url'},
    );

Map<String, dynamic> _$FileUploadedToJson(FileUploaded instance) =>
    <String, dynamic>{
      'file_url': instance.fileUrl,
    };
