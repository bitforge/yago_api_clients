// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelInfo _$ModelInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ModelInfo',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['site_url', 'quicklook_link', 'qr_config'],
        );
        final val = ModelInfo(
          siteUrl: $checkedConvert('site_url', (v) => v as String),
          quicklookLink: $checkedConvert('quicklook_link', (v) => v as String),
          qrConfig: $checkedConvert(
              'qr_config',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
        );
        return val;
      },
      fieldKeyMap: const {
        'siteUrl': 'site_url',
        'quicklookLink': 'quicklook_link',
        'qrConfig': 'qr_config'
      },
    );

Map<String, dynamic> _$ModelInfoToJson(ModelInfo instance) => <String, dynamic>{
      'site_url': instance.siteUrl,
      'quicklook_link': instance.quicklookLink,
      'qr_config': instance.qrConfig,
    };
