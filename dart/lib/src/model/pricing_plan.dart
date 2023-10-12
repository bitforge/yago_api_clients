//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'pricing_plan.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PricingPlan {
  /// Returns a new [PricingPlan] instance.
  PricingPlan({
    required this.key,
    required this.name,
    required this.price,
    this.priceOnRequest,
    this.projectQuotas = 0,
    this.projectQuotasDisabled,
    this.modelQuotas = '0',
    this.modelQuotasDisabled,
    this.seoOptimization,
    this.viewReporting,
    this.customQrCodes,
    this.scenesApp,
    this.hidden,
  });

  @JsonKey(name: r'key', required: true, includeIfNull: false)
  final String key;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  /// For display purposes, payment price is defined in stripe product.
  @JsonKey(name: r'price', required: true, includeIfNull: false)
  final double price;

  /// Remove price and display request price offer in pricing table
  @JsonKey(name: r'price_on_request', required: false, includeIfNull: false)
  final bool? priceOnRequest;

  @JsonKey(defaultValue: 0, name: r'project_quotas', required: false, includeIfNull: false)
  final int? projectQuotas;

  /// Disable quota check for this plan.
  @JsonKey(name: r'project_quotas_disabled', required: false, includeIfNull: false)
  final bool? projectQuotasDisabled;

  @JsonKey(defaultValue: '0', name: r'model_quotas', required: false, includeIfNull: false)
  final String? modelQuotas;

  /// Disable quota check for models.
  @JsonKey(name: r'model_quotas_disabled', required: false, includeIfNull: false)
  final bool? modelQuotasDisabled;

  /// Enables SEO tags and sharing previews.
  @JsonKey(name: r'seo_optimization', required: false, includeIfNull: false)
  final bool? seoOptimization;

  /// Allows to view detailed statistics about model views.
  @JsonKey(name: r'view_reporting', required: false, includeIfNull: false)
  final bool? viewReporting;

  /// Allows to visually customie QR Codes when enabled.
  @JsonKey(name: r'custom_qr_codes', required: false, includeIfNull: false)
  final bool? customQrCodes;

  /// Allow usage of yago scenes app.
  @JsonKey(name: r'scenes_app', required: false, includeIfNull: false)
  final bool? scenesApp;

  @JsonKey(name: r'hidden', required: false, includeIfNull: false)
  final bool? hidden;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PricingPlan &&
          other.key == key &&
          other.name == name &&
          other.price == price &&
          other.priceOnRequest == priceOnRequest &&
          other.projectQuotas == projectQuotas &&
          other.projectQuotasDisabled == projectQuotasDisabled &&
          other.modelQuotas == modelQuotas &&
          other.modelQuotasDisabled == modelQuotasDisabled &&
          other.seoOptimization == seoOptimization &&
          other.viewReporting == viewReporting &&
          other.customQrCodes == customQrCodes &&
          other.scenesApp == scenesApp &&
          other.hidden == hidden;

  @override
  int get hashCode =>
      key.hashCode +
      name.hashCode +
      price.hashCode +
      priceOnRequest.hashCode +
      projectQuotas.hashCode +
      projectQuotasDisabled.hashCode +
      modelQuotas.hashCode +
      modelQuotasDisabled.hashCode +
      seoOptimization.hashCode +
      viewReporting.hashCode +
      customQrCodes.hashCode +
      scenesApp.hashCode +
      hidden.hashCode;

  factory PricingPlan.fromJson(Map<String, dynamic> json) => _$PricingPlanFromJson(json);

  Map<String, dynamic> toJson() => _$PricingPlanToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
