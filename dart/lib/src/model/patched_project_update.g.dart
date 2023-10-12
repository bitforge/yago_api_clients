// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patched_project_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PatchedProjectUpdate _$PatchedProjectUpdateFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PatchedProjectUpdate',
      json,
      ($checkedConvert) {
        final val = PatchedProjectUpdate(
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          website: $checkedConvert('website', (v) => v as String?),
          gallery: $checkedConvert('gallery', (v) => v as bool?),
          translationsDe: $checkedConvert('translations_de', (v) => v as bool?),
          translationsEn: $checkedConvert('translations_en', (v) => v as bool?),
          translationsFr: $checkedConvert('translations_fr', (v) => v as bool?),
          translationsIt: $checkedConvert('translations_it', (v) => v as bool?),
          backlinkUrls: $checkedConvert('backlink_urls', (v) => v as bool?),
          arbuttonConfig: $checkedConvert(
              'arbutton_config',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
        );
        return val;
      },
      fieldKeyMap: const {
        'translationsDe': 'translations_de',
        'translationsEn': 'translations_en',
        'translationsFr': 'translations_fr',
        'translationsIt': 'translations_it',
        'backlinkUrls': 'backlink_urls',
        'arbuttonConfig': 'arbutton_config'
      },
    );

Map<String, dynamic> _$PatchedProjectUpdateToJson(
    PatchedProjectUpdate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('website', instance.website);
  writeNotNull('gallery', instance.gallery);
  writeNotNull('translations_de', instance.translationsDe);
  writeNotNull('translations_en', instance.translationsEn);
  writeNotNull('translations_fr', instance.translationsFr);
  writeNotNull('translations_it', instance.translationsIt);
  writeNotNull('backlink_urls', instance.backlinkUrls);
  writeNotNull('arbutton_config', instance.arbuttonConfig);
  return val;
}
