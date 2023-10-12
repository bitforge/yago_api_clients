// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelCreate _$ModelCreateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ModelCreate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'project', 'slug'],
        );
        final val = ModelCreate(
          id: $checkedConvert('id', (v) => v as String),
          project: $checkedConvert('project', (v) => v as String),
          nameDe: $checkedConvert('name_de', (v) => v as String?),
          nameEn: $checkedConvert('name_en', (v) => v as String?),
          nameFr: $checkedConvert('name_fr', (v) => v as String?),
          nameIt: $checkedConvert('name_it', (v) => v as String?),
          slug: $checkedConvert('slug', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'nameDe': 'name_de',
        'nameEn': 'name_en',
        'nameFr': 'name_fr',
        'nameIt': 'name_it'
      },
    );

Map<String, dynamic> _$ModelCreateToJson(ModelCreate instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'project': instance.project,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name_de', instance.nameDe);
  writeNotNull('name_en', instance.nameEn);
  writeNotNull('name_fr', instance.nameFr);
  writeNotNull('name_it', instance.nameIt);
  val['slug'] = instance.slug;
  return val;
}
