// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Model',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'project', 'name', 'created', 'modified'],
        );
        final val = Model(
          id: $checkedConvert('id', (v) => v as String),
          project: $checkedConvert('project', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          nameDe: $checkedConvert('name_de', (v) => v as String?),
          nameEn: $checkedConvert('name_en', (v) => v as String?),
          nameFr: $checkedConvert('name_fr', (v) => v as String?),
          nameIt: $checkedConvert('name_it', (v) => v as String?),
          slug: $checkedConvert('slug', (v) => v as String?),
          image: $checkedConvert('image', (v) => v as String?),
          imageThumb: $checkedConvert('image_thumb', (v) => v as String? ?? ''),
          imagePreview:
              $checkedConvert('image_preview', (v) => v as String? ?? ''),
          preview: $checkedConvert('preview', (v) => v as bool?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$ModelStatusEnumMap, v)),
          description:
              $checkedConvert('description', (v) => v as String? ?? ''),
          descriptionDe: $checkedConvert('description_de', (v) => v as String?),
          descriptionEn: $checkedConvert('description_en', (v) => v as String?),
          descriptionFr: $checkedConvert('description_fr', (v) => v as String?),
          descriptionIt: $checkedConvert('description_it', (v) => v as String?),
          number: $checkedConvert('number', (v) => v as int?),
          siteUrl: $checkedConvert('site_url', (v) => v as String? ?? ''),
          siteUrlDe: $checkedConvert('site_url_de', (v) => v as String?),
          siteUrlEn: $checkedConvert('site_url_en', (v) => v as String?),
          siteUrlFr: $checkedConvert('site_url_fr', (v) => v as String?),
          siteUrlIt: $checkedConvert('site_url_it', (v) => v as String?),
          sku: $checkedConvert('sku', (v) => v as String?),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          priceCurrency:
              $checkedConvert('price_currency', (v) => v as String? ?? 'CHF'),
          scaleable: $checkedConvert('scaleable', (v) => v as bool?),
          glb: $checkedConvert('glb', (v) => v as String?),
          usdz: $checkedConvert('usdz', (v) => v as String?),
          model: $checkedConvert('model', (v) => v as String?),
          arbuttonConfig: $checkedConvert(
              'arbutton_config',
              (v) =>
                  (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as Object),
                  ) ??
                  {}),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
          modified:
              $checkedConvert('modified', (v) => DateTime.parse(v as String)),
          verticalPlacement:
              $checkedConvert('vertical_placement', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'nameDe': 'name_de',
        'nameEn': 'name_en',
        'nameFr': 'name_fr',
        'nameIt': 'name_it',
        'imageThumb': 'image_thumb',
        'imagePreview': 'image_preview',
        'descriptionDe': 'description_de',
        'descriptionEn': 'description_en',
        'descriptionFr': 'description_fr',
        'descriptionIt': 'description_it',
        'siteUrl': 'site_url',
        'siteUrlDe': 'site_url_de',
        'siteUrlEn': 'site_url_en',
        'siteUrlFr': 'site_url_fr',
        'siteUrlIt': 'site_url_it',
        'priceCurrency': 'price_currency',
        'arbuttonConfig': 'arbutton_config',
        'verticalPlacement': 'vertical_placement'
      },
    );

Map<String, dynamic> _$ModelToJson(Model instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'project': instance.project,
    'name': instance.name,
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
  writeNotNull('slug', instance.slug);
  writeNotNull('image', instance.image);
  writeNotNull('image_thumb', instance.imageThumb);
  writeNotNull('image_preview', instance.imagePreview);
  writeNotNull('preview', instance.preview);
  writeNotNull('status', _$ModelStatusEnumMap[instance.status]);
  writeNotNull('description', instance.description);
  writeNotNull('description_de', instance.descriptionDe);
  writeNotNull('description_en', instance.descriptionEn);
  writeNotNull('description_fr', instance.descriptionFr);
  writeNotNull('description_it', instance.descriptionIt);
  writeNotNull('number', instance.number);
  writeNotNull('site_url', instance.siteUrl);
  writeNotNull('site_url_de', instance.siteUrlDe);
  writeNotNull('site_url_en', instance.siteUrlEn);
  writeNotNull('site_url_fr', instance.siteUrlFr);
  writeNotNull('site_url_it', instance.siteUrlIt);
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  writeNotNull('price_currency', instance.priceCurrency);
  writeNotNull('scaleable', instance.scaleable);
  writeNotNull('glb', instance.glb);
  writeNotNull('usdz', instance.usdz);
  writeNotNull('model', instance.model);
  writeNotNull('arbutton_config', instance.arbuttonConfig);
  val['created'] = instance.created.toIso8601String();
  val['modified'] = instance.modified.toIso8601String();
  writeNotNull('vertical_placement', instance.verticalPlacement);
  return val;
}

const _$ModelStatusEnumMap = {
  ModelStatus.DRAFT: 'DRAFT',
  ModelStatus.READY: 'READY',
  ModelStatus.ONLINE: 'ONLINE',
};
