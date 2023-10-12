// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelUpdate _$ModelUpdateFromJson(Map<String, dynamic> json) => $checkedCreate(
      'ModelUpdate',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['description', 'price_currency'],
        );
        final val = ModelUpdate(
          nameDe: $checkedConvert('name_de', (v) => v as String?),
          nameEn: $checkedConvert('name_en', (v) => v as String?),
          nameFr: $checkedConvert('name_fr', (v) => v as String?),
          nameIt: $checkedConvert('name_it', (v) => v as String?),
          status: $checkedConvert(
              'status', (v) => $enumDecodeNullable(_$ModelStatusEnumMap, v)),
          description: $checkedConvert('description', (v) => v as String),
          descriptionDe: $checkedConvert('description_de', (v) => v as String?),
          descriptionEn: $checkedConvert('description_en', (v) => v as String?),
          descriptionFr: $checkedConvert('description_fr', (v) => v as String?),
          descriptionIt: $checkedConvert('description_it', (v) => v as String?),
          number: $checkedConvert('number', (v) => v as int?),
          siteUrlDe: $checkedConvert('site_url_de', (v) => v as String?),
          siteUrlEn: $checkedConvert('site_url_en', (v) => v as String?),
          siteUrlFr: $checkedConvert('site_url_fr', (v) => v as String?),
          siteUrlIt: $checkedConvert('site_url_it', (v) => v as String?),
          scaleable: $checkedConvert('scaleable', (v) => v as bool?),
          sku: $checkedConvert('sku', (v) => v as String?),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          priceCurrency: $checkedConvert('price_currency', (v) => v as String?),
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
        'descriptionDe': 'description_de',
        'descriptionEn': 'description_en',
        'descriptionFr': 'description_fr',
        'descriptionIt': 'description_it',
        'siteUrlDe': 'site_url_de',
        'siteUrlEn': 'site_url_en',
        'siteUrlFr': 'site_url_fr',
        'siteUrlIt': 'site_url_it',
        'priceCurrency': 'price_currency',
        'verticalPlacement': 'vertical_placement'
      },
    );

Map<String, dynamic> _$ModelUpdateToJson(ModelUpdate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name_de', instance.nameDe);
  writeNotNull('name_en', instance.nameEn);
  writeNotNull('name_fr', instance.nameFr);
  writeNotNull('name_it', instance.nameIt);
  writeNotNull('status', _$ModelStatusEnumMap[instance.status]);
  val['description'] = instance.description;
  writeNotNull('description_de', instance.descriptionDe);
  writeNotNull('description_en', instance.descriptionEn);
  writeNotNull('description_fr', instance.descriptionFr);
  writeNotNull('description_it', instance.descriptionIt);
  writeNotNull('number', instance.number);
  writeNotNull('site_url_de', instance.siteUrlDe);
  writeNotNull('site_url_en', instance.siteUrlEn);
  writeNotNull('site_url_fr', instance.siteUrlFr);
  writeNotNull('site_url_it', instance.siteUrlIt);
  writeNotNull('scaleable', instance.scaleable);
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  writeNotNull('price_currency', instance.priceCurrency);
  writeNotNull('vertical_placement', instance.verticalPlacement);
  return val;
}

const _$ModelStatusEnumMap = {
  ModelStatus.DRAFT: 'DRAFT',
  ModelStatus.READY: 'READY',
  ModelStatus.ONLINE: 'ONLINE',
};
