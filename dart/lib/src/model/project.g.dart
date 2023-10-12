// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Project',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id', 'name', 'created', 'modified'],
        );
        final val = Project(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          slug: $checkedConvert('slug', (v) => v as String?),
          customerName:
              $checkedConvert('customer_name', (v) => v as String? ?? ''),
          image: $checkedConvert('image', (v) => v as String?),
          imageThumb: $checkedConvert('image_thumb', (v) => v as String? ?? ''),
          imagePreview:
              $checkedConvert('image_preview', (v) => v as String? ?? ''),
          website: $checkedConvert('website', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          gallery: $checkedConvert('gallery', (v) => v as bool?),
          translationsDe: $checkedConvert('translations_de', (v) => v as bool?),
          translationsEn: $checkedConvert('translations_en', (v) => v as bool?),
          translationsFr: $checkedConvert('translations_fr', (v) => v as bool?),
          translationsIt: $checkedConvert('translations_it', (v) => v as bool?),
          backlinkUrls: $checkedConvert('backlink_urls', (v) => v as bool?),
          orders: $checkedConvert(
              'orders',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => ActiveOrder.fromJson(e as Map<String, dynamic>))
                  .toList()),
          arbuttonConfig: $checkedConvert(
              'arbutton_config',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as Object),
                  )),
          created:
              $checkedConvert('created', (v) => DateTime.parse(v as String)),
          modified:
              $checkedConvert('modified', (v) => DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'customerName': 'customer_name',
        'imageThumb': 'image_thumb',
        'imagePreview': 'image_preview',
        'translationsDe': 'translations_de',
        'translationsEn': 'translations_en',
        'translationsFr': 'translations_fr',
        'translationsIt': 'translations_it',
        'backlinkUrls': 'backlink_urls',
        'arbuttonConfig': 'arbutton_config'
      },
    );

Map<String, dynamic> _$ProjectToJson(Project instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slug', instance.slug);
  writeNotNull('customer_name', instance.customerName);
  writeNotNull('image', instance.image);
  writeNotNull('image_thumb', instance.imageThumb);
  writeNotNull('image_preview', instance.imagePreview);
  writeNotNull('website', instance.website);
  writeNotNull('description', instance.description);
  writeNotNull('gallery', instance.gallery);
  writeNotNull('translations_de', instance.translationsDe);
  writeNotNull('translations_en', instance.translationsEn);
  writeNotNull('translations_fr', instance.translationsFr);
  writeNotNull('translations_it', instance.translationsIt);
  writeNotNull('backlink_urls', instance.backlinkUrls);
  writeNotNull('orders', instance.orders?.map((e) => e.toJson()).toList());
  writeNotNull('arbutton_config', instance.arbuttonConfig);
  val['created'] = instance.created.toIso8601String();
  val['modified'] = instance.modified.toIso8601String();
  return val;
}
