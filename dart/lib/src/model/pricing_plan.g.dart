// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PricingPlan _$PricingPlanFromJson(Map<String, dynamic> json) => $checkedCreate(
      'PricingPlan',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['key', 'name', 'price'],
        );
        final val = PricingPlan(
          key: $checkedConvert('key', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
          price: $checkedConvert('price', (v) => (v as num).toDouble()),
          priceOnRequest:
              $checkedConvert('price_on_request', (v) => v as bool?),
          projectQuotas:
              $checkedConvert('project_quotas', (v) => v as int? ?? 0),
          projectQuotasDisabled:
              $checkedConvert('project_quotas_disabled', (v) => v as bool?),
          modelQuotas:
              $checkedConvert('model_quotas', (v) => v as String? ?? '0'),
          modelQuotasDisabled:
              $checkedConvert('model_quotas_disabled', (v) => v as bool?),
          seoOptimization:
              $checkedConvert('seo_optimization', (v) => v as bool?),
          viewReporting: $checkedConvert('view_reporting', (v) => v as bool?),
          customQrCodes: $checkedConvert('custom_qr_codes', (v) => v as bool?),
          scenesApp: $checkedConvert('scenes_app', (v) => v as bool?),
          hidden: $checkedConvert('hidden', (v) => v as bool?),
        );
        return val;
      },
      fieldKeyMap: const {
        'priceOnRequest': 'price_on_request',
        'projectQuotas': 'project_quotas',
        'projectQuotasDisabled': 'project_quotas_disabled',
        'modelQuotas': 'model_quotas',
        'modelQuotasDisabled': 'model_quotas_disabled',
        'seoOptimization': 'seo_optimization',
        'viewReporting': 'view_reporting',
        'customQrCodes': 'custom_qr_codes',
        'scenesApp': 'scenes_app'
      },
    );

Map<String, dynamic> _$PricingPlanToJson(PricingPlan instance) {
  final val = <String, dynamic>{
    'key': instance.key,
    'name': instance.name,
    'price': instance.price,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price_on_request', instance.priceOnRequest);
  writeNotNull('project_quotas', instance.projectQuotas);
  writeNotNull('project_quotas_disabled', instance.projectQuotasDisabled);
  writeNotNull('model_quotas', instance.modelQuotas);
  writeNotNull('model_quotas_disabled', instance.modelQuotasDisabled);
  writeNotNull('seo_optimization', instance.seoOptimization);
  writeNotNull('view_reporting', instance.viewReporting);
  writeNotNull('custom_qr_codes', instance.customQrCodes);
  writeNotNull('scenes_app', instance.scenesApp);
  writeNotNull('hidden', instance.hidden);
  return val;
}
